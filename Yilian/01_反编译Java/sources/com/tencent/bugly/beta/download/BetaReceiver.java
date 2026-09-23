package com.tencent.bugly.beta.download;

/* loaded from: classes.dex */
public class BetaReceiver extends android.content.BroadcastReceiver {
    public static java.util.concurrent.ConcurrentHashMap<java.lang.String, com.tencent.bugly.beta.download.d> netListeners = new java.util.concurrent.ConcurrentHashMap<>(3);
    public static int netStatus = 0;
    public static java.lang.String CONNECTIVITY_CHANGE = "android.net.conn.CONNECTIVITY_CHANGE";

    public class a implements java.lang.Runnable {
        public final /* synthetic */ android.content.Intent a;
        public final /* synthetic */ android.content.Context b;

        public a(com.tencent.bugly.beta.download.BetaReceiver betaReceiver, android.content.Intent intent, android.content.Context context) {
            this.a = intent;
            this.b = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x009f A[Catch: Exception -> 0x00fd, TryCatch #0 {Exception -> 0x00fd, blocks: (B:2:0x0000, B:4:0x000e, B:5:0x0022, B:7:0x0028, B:8:0x0034, B:10:0x0044, B:12:0x0049, B:17:0x0057, B:18:0x005c, B:19:0x0067, B:22:0x006e, B:53:0x00ed, B:55:0x00f3, B:57:0x00f7, B:33:0x0082, B:34:0x008f, B:35:0x009b, B:36:0x009f, B:38:0x00a5, B:40:0x00ab, B:42:0x00b1, B:45:0x00b9, B:47:0x00c7, B:49:0x00d5, B:50:0x00e2, B:51:0x00e5, B:52:0x00e9), top: B:64:0x0000 }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 264
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.download.BetaReceiver.a.run():void");
        }
    }

    public static synchronized void addTask(com.tencent.bugly.beta.download.DownloadTask downloadTask) {
        netStatus = com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v);
        com.tencent.bugly.beta.ui.NetNotifyDialog netNotifyDialog = new com.tencent.bugly.beta.ui.NetNotifyDialog();
        netNotifyDialog.task = downloadTask;
        netListeners.put(downloadTask.getDownloadUrl(), new com.tencent.bugly.beta.download.d(2, downloadTask, java.lang.Boolean.FALSE, netNotifyDialog));
    }

    @Override // android.content.BroadcastReceiver
    public synchronized void onReceive(android.content.Context context, android.content.Intent intent) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.beta.download.BetaReceiver.a(this, intent, context));
    }
}
