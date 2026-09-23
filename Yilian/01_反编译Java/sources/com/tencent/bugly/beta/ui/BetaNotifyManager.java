package com.tencent.bugly.beta.ui;

/* loaded from: classes.dex */
public class BetaNotifyManager {
    public static final java.lang.String CHANNEL_DESCRIPTION = "bugly upgrade";
    public static final java.lang.String CHANNEL_ID = "001";
    public static final java.lang.String CHANNEL_NAME = "bugly_upgrade";
    public static final int NOTIFICATION_DOWNLOAD_ID = 1000;
    public static final int NOTIFICATION_UPGRADE_ID = 1001;
    public static final long NOTIFY_LEN = 307200;
    public static final int REQUEST_CODE_DOWNLOAD = 1;
    public static final int REQUEST_CODE_UPGRADE = 2;
    public static com.tencent.bugly.beta.ui.BetaNotifyManager instance = new com.tencent.bugly.beta.ui.BetaNotifyManager();
    public com.tencent.bugly.beta.ui.BaseFrag fragment;
    public long lastLen;
    public d.g.e.h mBuilder;
    public android.app.Notification mNotification;
    public com.tencent.bugly.proguard.B strategy;
    public com.tencent.bugly.beta.download.DownloadTask task;
    public boolean hasNotification = true;
    public android.content.Context mContext = com.tencent.bugly.beta.global.e.b.v;
    public java.lang.String intentFilter = this.mContext.getPackageName() + ".beta.DOWNLOAD_NOTIFY";
    public android.app.NotificationManager mManager = (android.app.NotificationManager) this.mContext.getSystemService("notification");

    public BetaNotifyManager() {
        this.mContext.registerReceiver(new com.tencent.bugly.beta.download.BetaReceiver(), new android.content.IntentFilter(this.intentFilter));
        adaptNotificationChannel();
    }

    private void adaptNotificationChannel() {
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            android.app.NotificationChannel notificationChannel = new android.app.NotificationChannel(CHANNEL_ID, CHANNEL_NAME, 2);
            notificationChannel.setDescription(CHANNEL_DESCRIPTION);
            notificationChannel.enableVibration(false);
            notificationChannel.setVibrationPattern(new long[]{0});
            this.mManager.createNotificationChannel(notificationChannel);
        }
    }

    public void initNotify(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        android.content.pm.ApplicationInfo applicationInfo;
        d.g.e.h hVar;
        this.task = downloadTask;
        this.lastLen = downloadTask.getSavedLength();
        boolean zIsNeededNotify = downloadTask.isNeededNotify();
        this.hasNotification = zIsNeededNotify;
        if (zIsNeededNotify && com.tencent.bugly.beta.global.e.b.T) {
            this.mManager.cancel(1000);
            android.content.Intent intent = new android.content.Intent(this.intentFilter);
            intent.putExtra("request", 1);
            if (this.mBuilder == null) {
                if (android.os.Build.VERSION.SDK_INT >= 26) {
                    try {
                        this.mBuilder = new d.g.e.h(this.mContext, CHANNEL_ID);
                    } catch (java.lang.Throwable unused) {
                        hVar = new d.g.e.h(this.mContext, null);
                    }
                } else {
                    hVar = new d.g.e.h(this.mContext, null);
                }
                this.mBuilder = hVar;
            }
            d.g.e.h hVar2 = this.mBuilder;
            hVar2.x.tickerText = d.g.e.h.b(com.tencent.bugly.beta.Beta.strNotificationDownloading + com.tencent.bugly.beta.global.e.b.B);
            hVar2.d(com.tencent.bugly.beta.global.e.b.B);
            java.util.Locale locale = java.util.Locale.getDefault();
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = com.tencent.bugly.beta.Beta.strNotificationDownloading;
            objArr[1] = java.lang.Integer.valueOf((int) (this.task.getTotalLength() != 0 ? (this.task.getSavedLength() * 100) / this.task.getTotalLength() : 0L));
            hVar2.c(java.lang.String.format(locale, "%s %d%%", objArr));
            hVar2.f1933g = android.app.PendingIntent.getBroadcast(this.mContext, 1, intent, 335544320);
            hVar2.e(16, false);
            com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
            int i = eVar.i;
            if (i > 0) {
                this.mBuilder.x.icon = i;
            } else {
                android.content.pm.PackageInfo packageInfo = eVar.C;
                if (packageInfo != null && (applicationInfo = packageInfo.applicationInfo) != null) {
                    this.mBuilder.x.icon = applicationInfo.icon;
                }
            }
            try {
                if (com.tencent.bugly.beta.global.e.b.j > 0 && this.mContext.getResources().getDrawable(com.tencent.bugly.beta.global.e.b.j) != null) {
                    this.mBuilder.f(com.tencent.bugly.beta.global.a.a(this.mContext.getResources().getDrawable(com.tencent.bugly.beta.global.e.b.j)));
                }
            } catch (android.content.res.Resources.NotFoundException e2) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("[initNotify] ");
                sbO.append(e2.getMessage());
                com.tencent.bugly.proguard.aa.b(com.tencent.bugly.beta.ui.BetaNotifyManager.class, sbO.toString(), new java.lang.Object[0]);
            }
            android.app.Notification notificationA = this.mBuilder.a();
            this.mNotification = notificationA;
            this.mManager.notify(1000, notificationA);
        }
    }

    public void postDownloadNotify() {
        com.tencent.bugly.beta.download.DownloadTask downloadTask;
        d.g.e.h hVar;
        java.lang.String str;
        d.g.e.h hVar2;
        java.lang.String str2;
        if (this.hasNotification && (downloadTask = this.task) != null && com.tencent.bugly.beta.global.e.b.T) {
            if (downloadTask.getSavedLength() - this.lastLen > NOTIFY_LEN || this.task.getStatus() == 1 || this.task.getStatus() == 5 || this.task.getStatus() == 3) {
                this.lastLen = this.task.getSavedLength();
                if (this.task.getStatus() == 1) {
                    hVar2 = this.mBuilder;
                    hVar2.e(16, true);
                    hVar2.c(com.tencent.bugly.beta.Beta.strNotificationClickToInstall);
                    str2 = java.lang.String.format("%s %s", com.tencent.bugly.beta.global.e.b.B, com.tencent.bugly.beta.Beta.strNotificationDownloadSucc);
                } else {
                    if (this.task.getStatus() != 5) {
                        if (this.task.getStatus() != 2) {
                            if (this.task.getStatus() == 3) {
                                hVar = this.mBuilder;
                                hVar.d(com.tencent.bugly.beta.global.e.b.B);
                                java.util.Locale locale = java.util.Locale.getDefault();
                                java.lang.Object[] objArr = new java.lang.Object[2];
                                objArr[0] = com.tencent.bugly.beta.Beta.strNotificationClickToContinue;
                                objArr[1] = java.lang.Integer.valueOf((int) (this.task.getTotalLength() != 0 ? (this.task.getSavedLength() * 100) / this.task.getTotalLength() : 0L));
                                str = java.lang.String.format(locale, "%s %d%%", objArr);
                            }
                            android.app.Notification notificationA = this.mBuilder.a();
                            this.mNotification = notificationA;
                            this.mManager.notify(1000, notificationA);
                        }
                        hVar = this.mBuilder;
                        hVar.d(com.tencent.bugly.beta.global.e.b.B);
                        java.util.Locale locale2 = java.util.Locale.getDefault();
                        java.lang.Object[] objArr2 = new java.lang.Object[2];
                        objArr2[0] = com.tencent.bugly.beta.Beta.strNotificationDownloading;
                        objArr2[1] = java.lang.Integer.valueOf((int) (this.task.getTotalLength() != 0 ? (this.task.getSavedLength() * 100) / this.task.getTotalLength() : 0L));
                        str = java.lang.String.format(locale2, "%s %d%%", objArr2);
                        hVar.c(str);
                        hVar.e(16, false);
                        android.app.Notification notificationA2 = this.mBuilder.a();
                        this.mNotification = notificationA2;
                        this.mManager.notify(1000, notificationA2);
                    }
                    hVar2 = this.mBuilder;
                    hVar2.e(16, false);
                    hVar2.c(com.tencent.bugly.beta.Beta.strNotificationClickToRetry);
                    str2 = java.lang.String.format("%s %s", com.tencent.bugly.beta.global.e.b.B, com.tencent.bugly.beta.Beta.strNotificationDownloadError);
                }
                hVar2.d(str2);
                android.app.Notification notificationA22 = this.mBuilder.a();
                this.mNotification = notificationA22;
                this.mManager.notify(1000, notificationA22);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a5 A[Catch: all -> 0x00f8, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x001d, B:13:0x0038, B:14:0x003f, B:12:0x0030, B:15:0x0041, B:17:0x00a5, B:23:0x00bc, B:25:0x00c2, B:27:0x00d2, B:28:0x00e9, B:18:0x00ac, B:20:0x00b0, B:22:0x00b4, B:8:0x0024, B:10:0x002a), top: B:36:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ac A[Catch: all -> 0x00f8, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x001d, B:13:0x0038, B:14:0x003f, B:12:0x0030, B:15:0x0041, B:17:0x00a5, B:23:0x00bc, B:25:0x00c2, B:27:0x00d2, B:28:0x00e9, B:18:0x00ac, B:20:0x00b0, B:22:0x00b4, B:8:0x0024, B:10:0x002a), top: B:36:0x0001, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c2 A[Catch: all -> 0x00f8, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x001d, B:13:0x0038, B:14:0x003f, B:12:0x0030, B:15:0x0041, B:17:0x00a5, B:23:0x00bc, B:25:0x00c2, B:27:0x00d2, B:28:0x00e9, B:18:0x00ac, B:20:0x00b0, B:22:0x00b4, B:8:0x0024, B:10:0x002a), top: B:36:0x0001, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void postUpgradeNotify(com.tencent.bugly.proguard.B r8, com.tencent.bugly.beta.ui.BaseFrag r9) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.ui.BetaNotifyManager.postUpgradeNotify(com.tencent.bugly.proguard.B, com.tencent.bugly.beta.ui.BaseFrag):void");
    }
}
