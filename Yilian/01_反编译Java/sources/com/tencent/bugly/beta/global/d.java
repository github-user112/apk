package com.tencent.bugly.beta.global;

/* loaded from: classes.dex */
public class d implements java.lang.Runnable {
    public int a;
    public final java.lang.Object[] b;

    public d(int i, java.lang.Object... objArr) {
        this.a = i;
        this.b = objArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        java.lang.Exception exc;
        java.util.ArrayList arrayList;
        com.tencent.bugly.proguard.C0256p c0256p;
        com.tencent.bugly.proguard.C0260z c0260z;
        com.tencent.bugly.proguard.C0256p c0256p2;
        com.tencent.bugly.proguard.C0260z c0260z2;
        com.tencent.bugly.proguard.C0256p c0256p3;
        com.tencent.bugly.proguard.C0260z c0260z3;
        try {
            com.tencent.bugly.beta.UpgradeInfo upgradeInfo = null;
            switch (this.a) {
                case 1:
                    try {
                        com.tencent.bugly.proguard.aa.c("Beta async init start...", new java.lang.Object[0]);
                        com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
                        synchronized (com.tencent.bugly.beta.global.e.b) {
                            try {
                                eVar.y = com.tencent.bugly.proguard.ha.a(new java.io.File(eVar.C.applicationInfo.publicSourceDir), "MD5");
                            } catch (java.lang.Exception unused) {
                                eVar.y = null;
                            }
                            if (android.text.TextUtils.isEmpty(eVar.y)) {
                                eVar.y = "null";
                                com.tencent.bugly.proguard.aa.b("无法获取md5值", new java.lang.Object[0]);
                            }
                            if (eVar.F) {
                                com.tencent.bugly.beta.global.a.a(eVar.w);
                            }
                            com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
                            if (betaGrayStrategy != null && betaGrayStrategy.a != null) {
                                if (android.text.TextUtils.equals(betaGrayStrategy.a.j.j.toUpperCase(), eVar.y)) {
                                    java.lang.String str = betaGrayStrategy.a.c().get("h5");
                                    if (!android.text.TextUtils.isEmpty(str)) {
                                        if (com.tencent.bugly.beta.Beta.enableActiveH5Alert) {
                                            android.content.Intent intent = new android.content.Intent(com.tencent.bugly.beta.global.e.b.v, (java.lang.Class<?>) com.tencent.bugly.beta.ui.BetaActiveAlertActivity.class);
                                            intent.putExtra("h5", betaGrayStrategy.a.c().get("h5"));
                                            intent.addFlags(268435456);
                                            com.tencent.bugly.beta.global.e.b.v.startActivity(intent);
                                        }
                                        if (com.tencent.bugly.beta.Beta.activeListener != null) {
                                            com.tencent.bugly.beta.Beta.activeListener.onActive(str);
                                        }
                                    }
                                    if (com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch")) {
                                        com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("active", java.lang.System.currentTimeMillis(), (byte) 0, 0L, null, betaGrayStrategy.a.r, betaGrayStrategy.a.u, null));
                                        com.tencent.bugly.beta.download.DownloadTask downloadTaskA = eVar.s.a(betaGrayStrategy.a.k.f1165c, eVar.w.getAbsolutePath(), null, null);
                                        downloadTaskA.setDownloadType(1);
                                        downloadTaskA.delete(true);
                                        com.tencent.bugly.beta.global.a.a(eVar.w);
                                        com.tencent.bugly.beta.global.f.a.a();
                                        com.tencent.bugly.proguard.aa.c("upgrade success", new java.lang.Object[0]);
                                    } else {
                                        com.tencent.bugly.proguard.aa.e("delete strategy failed", new java.lang.Object[0]);
                                    }
                                }
                                com.tencent.bugly.proguard.aa.c("[this md5:%s] [strategy md5:%s]", eVar.y, betaGrayStrategy.a.j.j);
                            }
                            com.tencent.bugly.beta.global.e.b.notifyAll();
                        }
                        eVar.v.registerReceiver(new com.tencent.bugly.beta.download.BetaReceiver(), new android.content.IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        if (eVar.f906e) {
                            com.tencent.bugly.beta.Beta.checkUpgrade(false, false);
                        } else {
                            if (eVar.f908g) {
                                com.tencent.bugly.beta.Beta.checkHotFix();
                            }
                            if (eVar.f907f) {
                                com.tencent.bugly.beta.Beta.checkAppUpgrade(false, false);
                            }
                        }
                        if (com.tencent.bugly.beta.global.e.b.H.a.f1162e && (arrayList = (java.util.ArrayList) com.tencent.bugly.proguard.C0256p.a.b()) != null && !arrayList.isEmpty()) {
                            com.tencent.bugly.beta.upgrade.b.a.a(new com.tencent.bugly.proguard.A(arrayList), true);
                        }
                        com.tencent.bugly.proguard.aa.c("Beta async init end...", new java.lang.Object[0]);
                        return;
                    } catch (java.lang.Exception e2) {
                        exc = e2;
                        if (com.tencent.bugly.proguard.aa.a(exc)) {
                            return;
                        }
                        exc.printStackTrace();
                        return;
                    }
                case 2:
                    com.tencent.bugly.beta.ui.UiManager.show((com.tencent.bugly.beta.ui.BaseFrag) this.b[0], ((java.lang.Boolean) this.b[1]).booleanValue());
                    return;
                case 3:
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy2 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.b[0];
                    com.tencent.bugly.beta.download.DownloadTask downloadTask = (com.tencent.bugly.beta.download.DownloadTask) this.b[1];
                    if (!betaGrayStrategy2.f915d) {
                        betaGrayStrategy2.f915d = true;
                        betaGrayStrategy2.f914c = java.lang.System.currentTimeMillis();
                        if (betaGrayStrategy2.a != null && betaGrayStrategy2.a.u == 1) {
                            com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", betaGrayStrategy2);
                        }
                    }
                    if (downloadTask.getStatus() != 2) {
                        if (downloadTask.getStatus() == 1) {
                            c0256p = com.tencent.bugly.proguard.C0256p.a;
                            c0260z = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 4, 0L, betaGrayStrategy2.a.j, betaGrayStrategy2.a.r, betaGrayStrategy2.a.u, null);
                        } else {
                            c0256p = com.tencent.bugly.proguard.C0256p.a;
                            c0260z = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 3, 0L, betaGrayStrategy2.a.j, betaGrayStrategy2.a.r, betaGrayStrategy2.a.u, null);
                        }
                        c0256p.a(c0260z);
                        return;
                    }
                    return;
                case 4:
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy3 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.b[0];
                    com.tencent.bugly.beta.download.DownloadTask downloadTask2 = (com.tencent.bugly.beta.download.DownloadTask) this.b[1];
                    boolean zBooleanValue = ((java.lang.Boolean) this.b[2]).booleanValue();
                    if (downloadTask2.getStatus() != 2) {
                        betaGrayStrategy3.f915d = false;
                        betaGrayStrategy3.f914c = java.lang.System.currentTimeMillis();
                        if (!zBooleanValue && betaGrayStrategy3.a.l != 2) {
                            betaGrayStrategy3.b++;
                        }
                        if (betaGrayStrategy3.a != null && betaGrayStrategy3.a.u == 1) {
                            com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", betaGrayStrategy3);
                        }
                        c0256p = com.tencent.bugly.proguard.C0256p.a;
                        c0260z = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 2, 0L, betaGrayStrategy3.a.j, betaGrayStrategy3.a.r, betaGrayStrategy3.a.u, null);
                        c0256p.a(c0260z);
                        return;
                    }
                    return;
                case 5:
                    com.tencent.bugly.beta.utils.f.a(com.tencent.bugly.beta.global.e.b.v, (java.lang.String) this.b[0]);
                    return;
                case 6:
                    synchronized (this) {
                        if (!((java.lang.Boolean) this.b[0]).booleanValue()) {
                            this.b[0] = java.lang.Boolean.TRUE;
                            ((java.lang.Runnable) this.b[1]).run();
                        }
                    }
                    return;
                case 7:
                    ((com.tencent.bugly.beta.ui.UpgradeDialog) this.b[0]).updateView();
                    return;
                case 8:
                    java.util.List<com.tencent.bugly.beta.download.DownloadListener> list = (java.util.List) this.b[0];
                    if (list != null) {
                        for (com.tencent.bugly.beta.download.DownloadListener downloadListener : list) {
                            if (downloadListener != null) {
                                downloadListener.onCompleted((com.tencent.bugly.beta.download.DownloadTask) this.b[1]);
                            }
                        }
                        return;
                    }
                    return;
                case 9:
                    java.util.List<com.tencent.bugly.beta.download.DownloadListener> list2 = (java.util.List) this.b[0];
                    if (list2 != null) {
                        for (com.tencent.bugly.beta.download.DownloadListener downloadListener2 : list2) {
                            if (downloadListener2 != null) {
                                downloadListener2.onReceive((com.tencent.bugly.beta.download.DownloadTask) this.b[1]);
                            }
                        }
                    }
                    com.tencent.bugly.beta.download.DownloadTask downloadTask3 = (com.tencent.bugly.beta.download.DownloadTask) this.b[1];
                    if (com.tencent.bugly.beta.global.e.b.Y == null || downloadTask3.getDownloadType() != 3) {
                        return;
                    }
                    com.tencent.bugly.beta.global.e.b.Y.onDownloadReceived(downloadTask3.getSavedLength(), downloadTask3.getTotalLength());
                    return;
                case 10:
                    java.util.List<com.tencent.bugly.beta.download.DownloadListener> list3 = (java.util.List) this.b[0];
                    if (list3 != null) {
                        for (com.tencent.bugly.beta.download.DownloadListener downloadListener3 : list3) {
                            if (downloadListener3 != null) {
                                downloadListener3.onFailed((com.tencent.bugly.beta.download.DownloadTask) this.b[1], ((java.lang.Integer) this.b[2]).intValue(), (java.lang.String) this.b[3]);
                            }
                        }
                        return;
                    }
                    return;
                case 11:
                    com.tencent.bugly.beta.ui.UiManager.show((com.tencent.bugly.beta.ui.BaseFrag) this.b[0], ((java.lang.Boolean) this.b[1]).booleanValue(), ((java.lang.Boolean) this.b[2]).booleanValue(), ((java.lang.Long) this.b[3]).longValue());
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("BetaAct TYPE_actCanShow checking : ");
                    sb.append(this.b[0].hashCode());
                    com.tencent.bugly.proguard.aa.c(sb.toString(), new java.lang.Object[0]);
                    return;
                case 12:
                    boolean zBooleanValue2 = ((java.lang.Boolean) this.b[0]).booleanValue();
                    com.tencent.bugly.beta.upgrade.a aVar = (com.tencent.bugly.beta.upgrade.a) this.b[1];
                    synchronized (this.b[1]) {
                        if (!zBooleanValue2) {
                            if (!aVar.f918d) {
                                this.b[0] = java.lang.Boolean.TRUE;
                                aVar.a(aVar.b, null, 0L, 0L, false, "request is not finished");
                                aVar.f917c[1] = java.lang.Boolean.TRUE;
                                aVar.f918d = false;
                                com.tencent.bugly.proguard.aa.c("request is not finished", new java.lang.Object[0]);
                            }
                        }
                    }
                    return;
                case 13:
                    com.tencent.bugly.beta.download.DownloadTask downloadTask4 = (com.tencent.bugly.beta.download.DownloadTask) this.b[0];
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy4 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.b[1];
                    if (downloadTask4 != null && betaGrayStrategy4 != null) {
                        int status = downloadTask4.getStatus();
                        if (status != 0 && status != 1) {
                            if (status == 2) {
                                downloadTask4.stop();
                                return;
                            } else if (status != 3 && status != 4 && status != 5) {
                                return;
                            }
                        }
                        if (!betaGrayStrategy4.f915d) {
                            betaGrayStrategy4.f915d = true;
                            betaGrayStrategy4.f914c = java.lang.System.currentTimeMillis();
                            if (betaGrayStrategy4.a != null && betaGrayStrategy4.a.u == 1) {
                                com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", betaGrayStrategy4);
                            }
                        }
                        if (downloadTask4.getStatus() != 2) {
                            if (downloadTask4.getStatus() == 1) {
                                c0256p3 = com.tencent.bugly.proguard.C0256p.a;
                                c0260z3 = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 4, 0L, betaGrayStrategy4.a.j, betaGrayStrategy4.a.r, betaGrayStrategy4.a.u, null);
                            } else {
                                c0256p3 = com.tencent.bugly.proguard.C0256p.a;
                                c0260z3 = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 3, 0L, betaGrayStrategy4.a.j, betaGrayStrategy4.a.r, betaGrayStrategy4.a.u, null);
                            }
                            c0256p3.a(c0260z3);
                        }
                        if (downloadTask4.getStatus() != 1 || !com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, downloadTask4.getSaveFile(), betaGrayStrategy4.a.k.b)) {
                            downloadTask4.download();
                            return;
                        }
                        c0256p2 = com.tencent.bugly.proguard.C0256p.a;
                        c0260z2 = new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, betaGrayStrategy4.a.j, betaGrayStrategy4.a.r, betaGrayStrategy4.a.u, null);
                        c0256p2.a(c0260z2);
                        return;
                    }
                    com.tencent.bugly.proguard.aa.c("strategyTask or betaStrategy is null", new java.lang.Object[0]);
                    return;
                case 14:
                    com.tencent.bugly.beta.download.DownloadTask downloadTask5 = (com.tencent.bugly.beta.download.DownloadTask) this.b[0];
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy5 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.b[1];
                    boolean zBooleanValue3 = ((java.lang.Boolean) this.b[2]).booleanValue();
                    if (downloadTask5 != null && betaGrayStrategy5 != null) {
                        if (downloadTask5.getStatus() != 2) {
                            betaGrayStrategy5.f915d = false;
                            betaGrayStrategy5.f914c = java.lang.System.currentTimeMillis();
                            if (!zBooleanValue3 && betaGrayStrategy5.a.l != 2) {
                                betaGrayStrategy5.b++;
                            }
                            if (betaGrayStrategy5.a != null && betaGrayStrategy5.a.u == 1) {
                                com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", betaGrayStrategy5);
                            }
                            c0256p2 = com.tencent.bugly.proguard.C0256p.a;
                            c0260z2 = new com.tencent.bugly.proguard.C0260z("pop", java.lang.System.currentTimeMillis(), (byte) 2, 0L, betaGrayStrategy5.a.j, betaGrayStrategy5.a.r, betaGrayStrategy5.a.u, null);
                            c0256p2.a(c0260z2);
                            return;
                        }
                        return;
                    }
                    com.tencent.bugly.proguard.aa.c("strategyTask or betaStrategy is null", new java.lang.Object[0]);
                    return;
                case 15:
                    if (!((com.tencent.bugly.beta.ui.BaseFrag) this.b[0]).isShowing() && !android.text.TextUtils.equals(com.tencent.bugly.beta.ui.UiManager.getTopAct(), com.tencent.bugly.beta.ui.BetaActivity.class.getCanonicalName())) {
                        com.tencent.bugly.beta.ui.UiManager.show((com.tencent.bugly.beta.ui.BaseFrag) this.b[0], ((java.lang.Boolean) this.b[1]).booleanValue(), ((java.lang.Boolean) this.b[2]).booleanValue(), ((java.lang.Long) this.b[3]).longValue());
                        return;
                    }
                    com.tencent.bugly.beta.utils.e.a(this, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                    return;
                case 16:
                    com.tencent.bugly.beta.upgrade.UpgradeListener upgradeListener = (com.tencent.bugly.beta.upgrade.UpgradeListener) this.b[0];
                    int iIntValue = ((java.lang.Integer) this.b[1]).intValue();
                    com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy6 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) this.b[2];
                    boolean zBooleanValue4 = ((java.lang.Boolean) this.b[3]).booleanValue();
                    boolean zBooleanValue5 = ((java.lang.Boolean) this.b[4]).booleanValue();
                    if (betaGrayStrategy6 != null) {
                        upgradeInfo = new com.tencent.bugly.beta.UpgradeInfo(betaGrayStrategy6.a);
                    }
                    upgradeListener.onUpgrade(iIntValue, upgradeInfo, zBooleanValue4, zBooleanValue5);
                    return;
                case 17:
                    try {
                        android.content.pm.PackageManager packageManager = com.tencent.bugly.beta.global.e.b.v.getPackageManager();
                        if (packageManager != null) {
                            android.content.ComponentName componentName = new android.content.ComponentName(com.tencent.bugly.beta.global.e.b.v, com.tencent.bugly.beta.ui.BetaActivity.class.getName());
                            if (packageManager.getComponentEnabledSetting(componentName) == 2) {
                                packageManager.setComponentEnabledSetting(componentName, 1, 1);
                            }
                        }
                        ((java.util.Map) this.b[0]).put((java.lang.Integer) this.b[1], (com.tencent.bugly.beta.ui.BaseFrag) this.b[2]);
                        android.content.Intent intent2 = new android.content.Intent(com.tencent.bugly.beta.global.e.b.v, (java.lang.Class<?>) com.tencent.bugly.beta.ui.BetaActivity.class);
                        intent2.putExtra("frag", (java.lang.Integer) this.b[1]);
                        intent2.setFlags(268435456);
                        com.tencent.bugly.beta.global.e.b.v.startActivity(intent2);
                        return;
                    } catch (java.lang.Exception e3) {
                        exc = e3;
                        com.tencent.bugly.proguard.aa.b("无法正常弹窗，请在AndroidManifest.xml中添加BetaActivity声明：\n<activity\n    android:name=\"com.tencent.bugly.beta.ui.BetaActivity\"\n    android:theme=\"@android:style/Theme.Translucent\" />", new java.lang.Object[0]);
                        if (com.tencent.bugly.proguard.aa.a(exc)) {
                            return;
                        }
                        exc.printStackTrace();
                        return;
                    }
                case 18:
                    com.tencent.bugly.beta.upgrade.UpgradeStateListener upgradeStateListener = (com.tencent.bugly.beta.upgrade.UpgradeStateListener) this.b[0];
                    int iIntValue2 = ((java.lang.Integer) this.b[1]).intValue();
                    boolean zBooleanValue6 = ((java.lang.Boolean) this.b[2]).booleanValue();
                    if (iIntValue2 == -1) {
                        upgradeStateListener.onUpgradeFailed(zBooleanValue6);
                        return;
                    }
                    if (iIntValue2 == 0) {
                        upgradeStateListener.onUpgradeSuccess(zBooleanValue6);
                        return;
                    }
                    if (iIntValue2 == 1) {
                        upgradeStateListener.onUpgradeNoVersion(zBooleanValue6);
                        return;
                    } else if (iIntValue2 == 2) {
                        upgradeStateListener.onUpgrading(zBooleanValue6);
                        return;
                    } else {
                        if (iIntValue2 != 3) {
                            return;
                        }
                        upgradeStateListener.onDownloadCompleted(zBooleanValue6);
                        return;
                    }
                default:
                    return;
            }
        } catch (java.lang.Exception e4) {
            if (com.tencent.bugly.proguard.aa.a(e4)) {
                return;
            }
            e4.printStackTrace();
        }
    }
}
