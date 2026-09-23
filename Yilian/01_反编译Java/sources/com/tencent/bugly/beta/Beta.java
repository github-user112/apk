package com.tencent.bugly.beta;

/* loaded from: classes.dex */
public class Beta extends com.tencent.bugly.a {
    public static final java.lang.String TAG_CANCEL_BUTTON = "beta_cancel_button";
    public static final java.lang.String TAG_CONFIRM_BUTTON = "beta_confirm_button";
    public static final java.lang.String TAG_IMG_BANNER = "beta_upgrade_banner";
    public static final java.lang.String TAG_TIP_MESSAGE = "beta_tip_message";
    public static final java.lang.String TAG_TITLE = "beta_title";
    public static final java.lang.String TAG_UPGRADE_FEATURE = "beta_upgrade_feature";
    public static final java.lang.String TAG_UPGRADE_INFO = "beta_upgrade_info";
    public static com.tencent.bugly.beta.upgrade.ActiveListener activeListener = null;
    public static boolean autoCheckAppUpgrade = false;
    public static boolean autoCheckHotfix = false;
    public static boolean autoCheckUpgrade = true;
    public static boolean autoInit = true;
    public static com.tencent.bugly.beta.interfaces.BetaPatchListener betaPatchListener = null;
    public static int defaultBannerId = 0;
    public static com.tencent.bugly.beta.download.DownloadListener downloadListener = null;
    public static long initDelay = 3000;
    public static java.lang.String initProcessName = null;
    public static int largeIconId = 0;
    public static boolean showInterruptedStrategy = true;
    public static int smallIconId = 0;
    public static java.io.File storageDir = null;
    public static java.lang.String strNetworkTipsCancelBtn = "取消";
    public static java.lang.String strNetworkTipsConfirmBtn = "继续下载";
    public static java.lang.String strNetworkTipsMessage = "你已切换到移动网络，是否继续当前下载？";
    public static java.lang.String strNetworkTipsTitle = "网络提示";
    public static java.lang.String strNotificationClickToContinue = "继续下载";
    public static java.lang.String strNotificationClickToInstall = "点击安装";
    public static java.lang.String strNotificationClickToRetry = "点击重试";
    public static java.lang.String strNotificationClickToView = "点击查看";
    public static java.lang.String strNotificationDownloadError = "下载失败";
    public static java.lang.String strNotificationDownloadSucc = "下载完成";
    public static java.lang.String strNotificationDownloading = "正在下载";
    public static java.lang.String strNotificationHaveNewVersion = "有新版本";
    public static java.lang.String strToastCheckUpgradeError = "检查新版本失败，请稍后重试";
    public static java.lang.String strToastCheckingUpgrade = "正在检查，请稍候...";
    public static java.lang.String strToastYourAreTheLatestVersion = "你已经是最新版了";
    public static java.lang.String strUpgradeDialogCancelBtn = "下次再说";
    public static java.lang.String strUpgradeDialogContinueBtn = "继续";
    public static java.lang.String strUpgradeDialogFeatureLabel = "更新说明";
    public static java.lang.String strUpgradeDialogFileSizeLabel = "包大小";
    public static java.lang.String strUpgradeDialogInstallBtn = "安装";
    public static java.lang.String strUpgradeDialogRetryBtn = "重试";
    public static java.lang.String strUpgradeDialogUpdateTimeLabel = "更新时间";
    public static java.lang.String strUpgradeDialogUpgradeBtn = "立即更新";
    public static java.lang.String strUpgradeDialogVersionLabel = "版本";
    public static int tipsDialogLayoutId;
    public static long upgradeCheckPeriod;
    public static int upgradeDialogLayoutId;
    public static com.tencent.bugly.beta.ui.UILifecycleListener<com.tencent.bugly.beta.UpgradeInfo> upgradeDialogLifecycleListener;
    public static com.tencent.bugly.beta.upgrade.UpgradeListener upgradeListener;
    public static com.tencent.bugly.beta.upgrade.UpgradeStateListener upgradeStateListener;
    public static java.util.List<java.lang.Class<? extends android.app.Activity>> canShowUpgradeActs = java.util.Collections.synchronizedList(new java.util.ArrayList());
    public static java.util.List<java.lang.Class<? extends android.app.Activity>> canNotShowUpgradeActs = java.util.Collections.synchronizedList(new java.util.ArrayList());
    public static boolean enableHotfix = false;
    public static boolean enableNotification = true;
    public static boolean autoDownloadOnWifi = false;
    public static boolean canShowApkInfo = true;
    public static boolean canAutoDownloadPatch = true;
    public static boolean canAutoPatch = true;
    public static java.lang.String appVersionName = null;
    public static int appVersionCode = Integer.MIN_VALUE;
    public static java.lang.String appChannel = null;
    public static boolean canNotifyUserRestart = false;
    public static java.util.List<java.lang.String> soBlackList = java.util.Collections.synchronizedList(new java.util.ArrayList());
    public static boolean dialogFullScreen = false;
    public static boolean autoInstallApk = true;
    public static boolean autoDownloadOn4g = false;
    public static boolean setPatchRestartOnScreenOff = true;
    public static boolean enableActiveH5Alert = true;
    public static com.tencent.bugly.beta.Beta instance = new com.tencent.bugly.beta.Beta();
    public static com.tencent.bugly.beta.download.DownloadTask a = null;

    public static void a(boolean z, boolean z2, int i) {
        try {
            if (z) {
                com.tencent.bugly.beta.upgrade.d.a.a(z, z2, i);
                if (upgradeStateListener != null) {
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(18, upgradeStateListener, 2, java.lang.Boolean.valueOf(z)));
                } else {
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(5, strToastCheckingUpgrade));
                }
            } else if (i == 0 || i == 1) {
                com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
                if (betaGrayStrategy == null || betaGrayStrategy.a == null || java.lang.System.currentTimeMillis() - betaGrayStrategy.f916e > com.tencent.bugly.beta.global.e.b.f905d) {
                    com.tencent.bugly.beta.upgrade.d.a.a(z, z2, i);
                } else {
                    com.tencent.bugly.beta.upgrade.d.a.a(z, z2, 0, null, "");
                }
            } else if (i != 3) {
            } else {
                com.tencent.bugly.proguard.r.a.a(z, z2, 3);
            }
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.a(e2)) {
                return;
            }
            e2.printStackTrace();
        }
    }

    public static void applyDownloadedPatch() {
        if (new java.io.File(com.tencent.bugly.beta.global.e.b.J.getAbsolutePath()).exists()) {
            com.tencent.bugly.beta.tinker.TinkerManager.getInstance().applyPatch(com.tencent.bugly.beta.global.e.b.J.getAbsolutePath(), true);
        } else {
            com.tencent.bugly.proguard.aa.b(com.tencent.bugly.beta.Beta.class, "[applyDownloadedPatch] patch file not exist", new java.lang.Object[0]);
        }
    }

    public static void applyTinkerPatch(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.getInstance().applyPatch(context, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void cancelDownload() {
        /*
            com.tencent.bugly.beta.upgrade.d r0 = com.tencent.bugly.beta.upgrade.d.a
            com.tencent.bugly.beta.global.d r1 = r0.j
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L25
            java.lang.Object[] r1 = r1.b
            r5 = r1[r4]
            com.tencent.bugly.beta.download.DownloadTask r6 = r0.f919c
            if (r5 != r6) goto L25
            r5 = r1[r3]
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy r0 = r0.b
            if (r5 != r0) goto L25
            r0 = r1[r2]
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            com.tencent.bugly.beta.upgrade.d r1 = com.tencent.bugly.beta.upgrade.d.a
            boolean r1 = r1.f923g
            if (r0 == r1) goto L43
        L25:
            com.tencent.bugly.beta.upgrade.d r0 = com.tencent.bugly.beta.upgrade.d.a
            com.tencent.bugly.beta.global.d r1 = new com.tencent.bugly.beta.global.d
            r5 = 3
            java.lang.Object[] r5 = new java.lang.Object[r5]
            com.tencent.bugly.beta.download.DownloadTask r6 = r0.f919c
            r5[r4] = r6
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy r4 = r0.b
            r5[r3] = r4
            boolean r3 = r0.f923g
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r5[r2] = r3
            r2 = 14
            r1.<init>(r2, r5)
            r0.j = r1
        L43:
            com.tencent.bugly.beta.upgrade.d r0 = com.tencent.bugly.beta.upgrade.d.a
            com.tencent.bugly.beta.global.d r0 = r0.j
            r0.run()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.Beta.cancelDownload():void");
    }

    public static void checkAppUpgrade() {
        a(true, false, 1);
    }

    public static void checkAppUpgrade(boolean z, boolean z2) {
        a(z, z2, 1);
    }

    public static void checkHotFix() {
        a(false, false, 3);
    }

    public static void checkUpgrade() {
        checkUpgrade(true, false);
    }

    public static void checkUpgrade(boolean z, boolean z2) {
        a(z, z2, 0);
    }

    public static void cleanTinkerPatch(boolean z) {
        com.tencent.bugly.beta.global.a.b("IS_PATCH_ROLL_BACK", false);
        com.tencent.bugly.beta.tinker.TinkerManager.getInstance().cleanPatch(z);
    }

    public static void downloadPatch() {
        com.tencent.bugly.proguard.r rVar = com.tencent.bugly.proguard.r.a;
        rVar.b = rVar.a((com.tencent.bugly.proguard.B) null);
        try {
            if (com.tencent.bugly.proguard.r.a.b != null) {
                com.tencent.bugly.proguard.r.a.a(0, com.tencent.bugly.proguard.r.a.b.a, true);
            }
        } catch (java.lang.Exception unused) {
        }
    }

    public static com.tencent.bugly.beta.UpgradeInfo getAppUpgradeInfo() {
        try {
            com.tencent.bugly.beta.upgrade.d.a.b = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
            if (com.tencent.bugly.beta.upgrade.d.a.b != null) {
                return new com.tencent.bugly.beta.UpgradeInfo(com.tencent.bugly.beta.upgrade.d.a.b.a);
            }
            return null;
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static com.tencent.bugly.beta.UpgradeInfo getHotfixUpgradeInfo() {
        try {
            com.tencent.bugly.proguard.r.a.b = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("hotfix.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
            if (com.tencent.bugly.proguard.r.a.b != null) {
                return new com.tencent.bugly.beta.UpgradeInfo(com.tencent.bugly.proguard.r.a.b.a);
            }
            return null;
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static com.tencent.bugly.beta.Beta getInstance() {
        com.tencent.bugly.beta.Beta beta = instance;
        beta.id = 1002;
        beta.version = "1.6.1";
        beta.versionKey = "G10";
        return beta;
    }

    public static com.tencent.bugly.beta.download.DownloadTask getStrategyTask() {
        if (a == null) {
            com.tencent.bugly.beta.upgrade.d.a.b = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
            if (com.tencent.bugly.beta.upgrade.d.a.b != null) {
                com.tencent.bugly.beta.download.DownloadTask downloadTaskA = com.tencent.bugly.beta.global.e.b.s.a(com.tencent.bugly.beta.upgrade.d.a.b.a.k.f1165c, com.tencent.bugly.beta.global.e.b.w.getAbsolutePath(), null, com.tencent.bugly.beta.upgrade.d.a.b.a.k.b);
                a = downloadTaskA;
                downloadTaskA.setDownloadType(1);
                com.tencent.bugly.beta.upgrade.d.a.f919c = a;
            }
        }
        return com.tencent.bugly.beta.upgrade.d.a.f919c;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d A[Catch: Exception -> 0x0045, TRY_LEAVE, TryCatch #0 {Exception -> 0x0045, blocks: (B:3:0x0003, B:5:0x000d, B:7:0x0017, B:10:0x001d, B:12:0x0021, B:26:0x003d, B:16:0x002c, B:20:0x0033), top: B:30:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.tencent.bugly.beta.UpgradeInfo getUpgradeInfo() {
        /*
            java.lang.String r0 = "hotfix.strategy.bch"
            r1 = 0
            android.os.Parcelable$Creator<com.tencent.bugly.beta.upgrade.BetaGrayStrategy> r2 = com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR     // Catch: java.lang.Exception -> L45
            android.os.Parcelable r0 = com.tencent.bugly.beta.global.a.a(r0, r2)     // Catch: java.lang.Exception -> L45
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy r0 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) r0     // Catch: java.lang.Exception -> L45
            java.lang.String r2 = "app.upgrade.strategy.bch"
            android.os.Parcelable$Creator<com.tencent.bugly.beta.upgrade.BetaGrayStrategy> r3 = com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR     // Catch: java.lang.Exception -> L45
            android.os.Parcelable r2 = com.tencent.bugly.beta.global.a.a(r2, r3)     // Catch: java.lang.Exception -> L45
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy r2 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) r2     // Catch: java.lang.Exception -> L45
            if (r0 == 0) goto L2a
            com.tencent.bugly.proguard.B r3 = r0.a     // Catch: java.lang.Exception -> L45
            if (r3 == 0) goto L2a
            if (r2 == 0) goto L2a
            com.tencent.bugly.proguard.B r3 = r2.a     // Catch: java.lang.Exception -> L45
            if (r3 == 0) goto L2a
            long r3 = r0.f916e     // Catch: java.lang.Exception -> L45
            long r5 = r2.f916e     // Catch: java.lang.Exception -> L45
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L3a
            goto L3b
        L2a:
            if (r0 == 0) goto L3a
            com.tencent.bugly.proguard.B r3 = r0.a     // Catch: java.lang.Exception -> L45
            if (r3 != 0) goto L31
            goto L3a
        L31:
            if (r2 == 0) goto L3b
            com.tencent.bugly.proguard.B r2 = r2.a     // Catch: java.lang.Exception -> L45
            if (r2 != 0) goto L38
            goto L3b
        L38:
            r0 = r1
            goto L3b
        L3a:
            r0 = r2
        L3b:
            if (r0 == 0) goto L45
            com.tencent.bugly.beta.UpgradeInfo r2 = new com.tencent.bugly.beta.UpgradeInfo     // Catch: java.lang.Exception -> L45
            com.tencent.bugly.proguard.B r0 = r0.a     // Catch: java.lang.Exception -> L45
            r2.<init>(r0)     // Catch: java.lang.Exception -> L45
            return r2
        L45:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.Beta.getUpgradeInfo():com.tencent.bugly.beta.UpgradeInfo");
    }

    public static synchronized com.tencent.bugly.proguard.B getUpgradeStrategy() {
        com.tencent.bugly.beta.upgrade.d.a.b = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
        try {
            if (com.tencent.bugly.beta.upgrade.d.a.b != null) {
                return (com.tencent.bugly.proguard.B) com.tencent.bugly.beta.upgrade.d.a.b.a.clone();
            }
        } catch (java.lang.Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x021c A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02c7 A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02fa A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0306 A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0412 A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x042f A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x044b A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0479 A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04b2 A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x00e0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x01ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0144 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0112 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00dc A[Catch: all -> 0x05fe, TRY_LEAVE, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010e A[Catch: all -> 0x05fe, TRY_LEAVE, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0140 A[Catch: all -> 0x05fe, TRY_LEAVE, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0175 A[Catch: all -> 0x05fe, TRY_LEAVE, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01aa A[Catch: all -> 0x05fe, TRY_LEAVE, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01ed A[Catch: all -> 0x05fe, TryCatch #6 {, blocks: (B:5:0x0004, B:7:0x0024, B:8:0x002a, B:12:0x004e, B:14:0x0058, B:17:0x0065, B:19:0x0076, B:21:0x008d, B:23:0x0093, B:25:0x00aa, B:27:0x00ae, B:29:0x00ba, B:31:0x00c0, B:35:0x00dc, B:37:0x00e0, B:39:0x00ec, B:41:0x00f2, B:45:0x010e, B:47:0x0112, B:49:0x011e, B:51:0x0124, B:55:0x0140, B:57:0x0144, B:59:0x0150, B:61:0x0156, B:65:0x0175, B:67:0x0179, B:69:0x0185, B:71:0x018b, B:75:0x01aa, B:77:0x01ae, B:79:0x01b7, B:83:0x01d7, B:85:0x01db, B:87:0x01e1, B:88:0x01e7, B:90:0x01ed, B:92:0x01f5, B:93:0x01fb, B:94:0x0206, B:96:0x020a, B:98:0x0210, B:99:0x0216, B:101:0x021c, B:103:0x0224, B:104:0x022a, B:105:0x0235, B:109:0x024c, B:113:0x025e, B:117:0x0270, B:121:0x0284, B:125:0x0298, B:129:0x02ac, B:133:0x02be, B:135:0x02c7, B:137:0x02cd, B:139:0x02d5, B:140:0x02e5, B:141:0x02f6, B:143:0x02fa, B:144:0x02fe, B:146:0x0306, B:147:0x0310, B:149:0x0400, B:151:0x0406, B:152:0x040c, B:154:0x0412, B:156:0x041a, B:157:0x0420, B:158:0x042b, B:160:0x042f, B:161:0x043a, B:163:0x044b, B:164:0x0452, B:166:0x0466, B:168:0x046a, B:169:0x0475, B:171:0x0479, B:172:0x048e, B:174:0x04a8, B:177:0x05d2, B:176:0x04b2, B:82:0x01ca, B:74:0x019d, B:64:0x0168, B:54:0x0133, B:44:0x0101, B:34:0x00cf, B:24:0x009b, B:20:0x007e), top: B:197:0x0004, inners: #0, #1, #2, #3, #4, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized void init(android.content.Context r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.Beta.init(android.content.Context, boolean):void");
    }

    public static synchronized void installApk(java.io.File file) {
        com.tencent.bugly.proguard.B upgradeStrategy;
        try {
            upgradeStrategy = getUpgradeStrategy();
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
        if (upgradeStrategy != null && com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, file, upgradeStrategy.k.b)) {
            com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, upgradeStrategy.j, upgradeStrategy.r, upgradeStrategy.u, null));
        }
    }

    public static void installTinker() {
        enableHotfix = true;
        installTinker(com.tencent.bugly.beta.tinker.TinkerApplicationLike.getTinkerPatchApplicationLike());
    }

    public static void installTinker(java.lang.Object obj) {
        enableHotfix = true;
        com.tencent.bugly.beta.tinker.TinkerManager.setPatchRestartOnScreenOff(setPatchRestartOnScreenOff);
        com.tencent.bugly.proguard.aa.c("setPatchRestartOnScreenOff %s", setPatchRestartOnScreenOff + "");
        com.tencent.bugly.beta.tinker.TinkerManager.installTinker(obj);
    }

    public static void installTinker(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, java.lang.Object obj4, com.tencent.bugly.beta.tinker.TinkerManager.TinkerPatchResultListener tinkerPatchResultListener, java.lang.Object obj5) {
        enableHotfix = true;
        com.tencent.bugly.beta.tinker.TinkerManager.installTinker(obj, obj2, obj3, obj4, tinkerPatchResultListener, obj5);
    }

    public static void loadArmLibrary(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.loadArmLibrary(context, str);
    }

    public static void loadArmV7Library(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.beta.tinker.TinkerManager.loadArmV7Library(context, str);
    }

    public static void loadLibrary(java.lang.String str) {
        boolean zLoadLibraryFromTinker;
        com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    if (!com.tencent.bugly.beta.global.a.a("LoadSoFileResult", true)) {
                        java.lang.System.loadLibrary(str);
                        com.tencent.bugly.beta.global.a.b("IS_PATCH_ROLL_BACK", true);
                        cleanTinkerPatch(true);
                        return;
                    }
                    com.tencent.bugly.beta.global.a.b("LoadSoFileResult", false);
                    java.lang.String strA = com.tencent.bugly.beta.global.a.a(str, "");
                    boolean zA = com.tencent.bugly.beta.global.a.a("PatchResult", false);
                    if (android.text.TextUtils.isEmpty(strA) || !zA) {
                        zLoadLibraryFromTinker = false;
                    } else {
                        java.lang.StringBuilder sb = new java.lang.StringBuilder();
                        sb.append("lib/");
                        sb.append(strA);
                        zLoadLibraryFromTinker = com.tencent.bugly.beta.tinker.TinkerManager.loadLibraryFromTinker(eVar.v, sb.toString(), str);
                    }
                    if (!zLoadLibraryFromTinker) {
                        java.lang.System.loadLibrary(str);
                    }
                    com.tencent.bugly.beta.global.a.b("LoadSoFileResult", true);
                    return;
                }
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                com.tencent.bugly.beta.global.a.b("LoadSoFileResult", false);
                return;
            }
        }
        com.tencent.bugly.proguard.aa.b("libName is invalid", new java.lang.Object[0]);
    }

    public static void loadLibraryFromTinker(android.content.Context context, java.lang.String str, java.lang.String str2) {
        com.tencent.bugly.beta.tinker.TinkerManager.loadLibraryFromTinker(context, str, str2);
    }

    public static synchronized void onUpgradeReceived(java.lang.String str, int i, java.lang.String str2, long j, int i2, int i3, java.lang.String str3, java.lang.String str4, long j2, java.lang.String str5, java.lang.String str6, int i4, int i5, long j3, java.lang.String str7, boolean z, boolean z2, int i6, java.lang.String str8, long j4) {
        java.util.HashMap map = new java.util.HashMap();
        map.put("IMG_title", str6);
        map.put("VAL_style", java.lang.String.valueOf(i4));
        com.tencent.bugly.beta.upgrade.d.a.a(z, z2, i6, new com.tencent.bugly.proguard.B(str, str2, j, 0, new com.tencent.bugly.proguard.y(com.tencent.bugly.beta.global.e.b.x, (byte) 1, i3, str3, i2, "", 1L, "", str5, "", ""), new com.tencent.bugly.proguard.C0259x(str5, str4, "", j2, ""), (byte) i, i5, j3, null, "", map, str7, 1, j4, 1), str8 == null ? "" : str8);
    }

    public static void registerDownloadListener(com.tencent.bugly.beta.download.DownloadListener downloadListener2) {
        com.tencent.bugly.beta.download.DownloadTask downloadTask;
        com.tencent.bugly.beta.global.e.b.t = downloadListener2;
        if (downloadListener2 == null || (downloadTask = com.tencent.bugly.beta.upgrade.d.a.f919c) == null) {
            return;
        }
        downloadTask.addListener(downloadListener2);
    }

    public static synchronized void saveInstallEvent(boolean z) {
        try {
            com.tencent.bugly.proguard.B upgradeStrategy = getUpgradeStrategy();
            if (upgradeStrategy != null && z) {
                com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, upgradeStrategy.j, upgradeStrategy.r, upgradeStrategy.u, null));
                com.tencent.bugly.proguard.aa.c("安装事件保存成功", new java.lang.Object[0]);
            }
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized void showUpgradeDialog(java.lang.String str, int i, java.lang.String str2, long j, int i2, int i3, java.lang.String str3, java.lang.String str4, long j2, java.lang.String str5, java.lang.String str6, int i4, com.tencent.bugly.beta.download.DownloadListener downloadListener2, java.lang.Runnable runnable, java.lang.Runnable runnable2, boolean z) {
        com.tencent.bugly.proguard.B b;
        java.util.HashMap map = new java.util.HashMap();
        map.put("IMG_title", str6);
        map.put("VAL_style", java.lang.String.valueOf(i4));
        com.tencent.bugly.proguard.B b2 = new com.tencent.bugly.proguard.B(str, str2, j, 0, new com.tencent.bugly.proguard.y(com.tencent.bugly.beta.global.e.b.x, (byte) 1, i3, str3, i2, "", 1L, "", str5, "1.6.1", ""), new com.tencent.bugly.proguard.C0259x(str5, str4, "", j2, ""), (byte) i, 0, 0L, null, "", map, null, 1, java.lang.System.currentTimeMillis(), 1);
        com.tencent.bugly.beta.download.DownloadTask downloadTask = a;
        if (downloadTask != null && !downloadTask.getDownloadUrl().equals(str4)) {
            a.delete(true);
            a = null;
        }
        if (a == null) {
            com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
            b = b2;
            com.tencent.bugly.beta.download.DownloadTask downloadTaskA = eVar.s.a(b.k.f1165c, eVar.w.getAbsolutePath(), null, b.k.b);
            a = downloadTaskA;
            downloadTaskA.setDownloadType(1);
        } else {
            b = b2;
        }
        a.addListener(downloadListener2);
        com.tencent.bugly.beta.ui.UpgradeDialog.instance.setUpgradeInfo(b, a);
        com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog = com.tencent.bugly.beta.ui.UpgradeDialog.instance;
        upgradeDialog.upgradeRunnable = runnable;
        upgradeDialog.cancelRunnable = runnable2;
        com.tencent.bugly.beta.global.f.a.a(com.tencent.bugly.beta.global.e.b.s, b.q);
        if (z) {
            com.tencent.bugly.beta.global.f fVar = com.tencent.bugly.beta.global.f.a;
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = com.tencent.bugly.beta.ui.UpgradeDialog.instance;
            objArr[1] = java.lang.Boolean.valueOf(b.l == 2);
            fVar.a(new com.tencent.bugly.beta.global.d(2, objArr), 3000);
        } else {
            com.tencent.bugly.beta.global.f fVar2 = com.tencent.bugly.beta.global.f.a;
            java.lang.Object[] objArr2 = new java.lang.Object[2];
            objArr2[0] = com.tencent.bugly.beta.ui.UpgradeDialog.instance;
            objArr2[1] = java.lang.Boolean.valueOf(b.l == 2);
            fVar2.a(new com.tencent.bugly.beta.global.d(2, objArr2));
        }
    }

    public static com.tencent.bugly.beta.download.DownloadTask startDownload() {
        com.tencent.bugly.beta.upgrade.d dVar = com.tencent.bugly.beta.upgrade.d.a;
        com.tencent.bugly.beta.global.d dVar2 = dVar.i;
        if (dVar2 == null || dVar2.b[0] != dVar.f919c) {
            com.tencent.bugly.beta.upgrade.d dVar3 = com.tencent.bugly.beta.upgrade.d.a;
            dVar3.i = new com.tencent.bugly.beta.global.d(13, dVar3.f919c, dVar3.b);
        }
        com.tencent.bugly.beta.upgrade.d.a.i.run();
        return com.tencent.bugly.beta.upgrade.d.a.f919c;
    }

    public static void unInit() {
        if (com.tencent.bugly.beta.global.a.a("IS_PATCH_ROLL_BACK", false)) {
            com.tencent.bugly.beta.global.a.b("IS_PATCH_ROLL_BACK", false);
            com.tencent.bugly.beta.tinker.TinkerManager.getInstance().cleanPatch(true);
        }
    }

    public static void unregisterDownloadListener() {
        com.tencent.bugly.beta.download.DownloadTask downloadTask = com.tencent.bugly.beta.upgrade.d.a.f919c;
        if (downloadTask != null) {
            downloadTask.removeListener(com.tencent.bugly.beta.global.e.b.t);
        }
        com.tencent.bugly.beta.global.e.b.t = null;
    }

    @Override // com.tencent.bugly.a
    public java.lang.String[] getTables() {
        return new java.lang.String[]{"dl_1002", "ge_1002", "st_1002"};
    }

    @Override // com.tencent.bugly.a
    public synchronized void init(android.content.Context context, boolean z, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        com.tencent.bugly.crashreport.common.info.a.n().a("G10", "1.6.1");
        if (autoInit) {
            init(context, z);
        }
    }

    @Override // com.tencent.bugly.a
    public void onDbDowngrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }

    @Override // com.tencent.bugly.a
    public void onDbUpgrade(android.database.sqlite.SQLiteDatabase sQLiteDatabase, int i, int i2) {
        int i3;
        java.lang.String str;
        java.lang.String str2;
        android.database.Cursor cursorQuery;
        java.lang.String str3 = " , ";
        java.lang.String str4 = com.umeng.analytics.pro.am.f1240d;
        int i4 = i;
        int i5 = i2;
        while (i4 < i5) {
            if (i4 != 10) {
                i3 = i4;
                str = str3;
                str2 = str4;
            } else {
                try {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.setLength(0);
                    sb.append(" CREATE TABLE  IF NOT EXISTS ");
                    sb.append("st_1002");
                    sb.append(" ( ");
                    sb.append(str4);
                    sb.append(" ");
                    sb.append("integer");
                    sb.append(str3);
                    sb.append(com.umeng.analytics.pro.am.f1241e);
                    sb.append(" ");
                    sb.append("text");
                    sb.append(str3);
                    sb.append("_tm");
                    sb.append(" ");
                    sb.append("int");
                    sb.append(str3);
                    sb.append("_dt");
                    sb.append(" ");
                    sb.append("blob");
                    sb.append(",primary key(");
                    sb.append(str4);
                    sb.append(",");
                    sb.append(com.umeng.analytics.pro.am.f1241e);
                    sb.append(" )) ");
                    com.tencent.bugly.proguard.aa.a("create %s", sb.toString());
                    sQLiteDatabase.execSQL(sb.toString());
                } catch (java.lang.Throwable th) {
                    if (!com.tencent.bugly.proguard.aa.a(th)) {
                        th.printStackTrace();
                    }
                }
                i3 = i4;
                str = str3;
                str2 = str4;
                try {
                    cursorQuery = sQLiteDatabase.query("t_pf", null, "_id = 1002", null, null, null, null);
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    cursorQuery = null;
                }
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        return;
                    } else {
                        return;
                    }
                }
                while (cursorQuery.moveToNext()) {
                    try {
                        android.content.ContentValues contentValues = new android.content.ContentValues();
                        if (cursorQuery.getLong(cursorQuery.getColumnIndex(str2)) > 0) {
                            contentValues.put(str2, java.lang.Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex(str2))));
                        }
                        contentValues.put("_tm", java.lang.Long.valueOf(cursorQuery.getLong(cursorQuery.getColumnIndex("_tm"))));
                        contentValues.put(com.umeng.analytics.pro.am.f1241e, cursorQuery.getString(cursorQuery.getColumnIndex(com.umeng.analytics.pro.am.f1241e)));
                        contentValues.put("_dt", cursorQuery.getBlob(cursorQuery.getColumnIndex("_dt")));
                        sQLiteDatabase.replace("st_1002", null, contentValues);
                    } catch (java.lang.Throwable th3) {
                        th = th3;
                        try {
                            if (!com.tencent.bugly.proguard.aa.a(th)) {
                                th.printStackTrace();
                            }
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            i4 = i3 + 1;
                            i5 = i2;
                            str4 = str2;
                            str3 = str;
                        } finally {
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                        }
                    }
                }
                cursorQuery.close();
            }
            i4 = i3 + 1;
            i5 = i2;
            str4 = str2;
            str3 = str;
        }
    }
}
