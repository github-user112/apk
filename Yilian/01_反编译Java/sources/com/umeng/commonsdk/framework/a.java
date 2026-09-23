package com.umeng.commonsdk.framework;

/* loaded from: classes.dex */
public class a implements com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback {
    public static android.os.HandlerThread a = null;
    public static android.os.Handler b = null;

    /* renamed from: c, reason: collision with root package name */
    public static android.os.Handler f1453c = null;

    /* renamed from: d, reason: collision with root package name */
    public static final int f1454d = 200;

    /* renamed from: e, reason: collision with root package name */
    public static final int f1455e = 273;

    /* renamed from: f, reason: collision with root package name */
    public static final int f1456f = 274;

    /* renamed from: g, reason: collision with root package name */
    public static final int f1457g = 512;
    public static final int h = 769;
    public static com.umeng.commonsdk.framework.a.FileObserverC0019a i = null;
    public static android.net.ConnectivityManager j = null;
    public static android.net.NetworkInfo k = null;
    public static android.content.IntentFilter l = null;
    public static boolean m = false;
    public static java.util.ArrayList<com.umeng.commonsdk.framework.UMSenderStateNotify> n = null;
    public static final java.lang.String q = "report_policy";
    public static final java.lang.String r = "report_interval";
    public static final int t = 15;
    public static final int u = 3;
    public static final int v = 90;
    public static java.lang.Object o = new java.lang.Object();
    public static java.util.concurrent.locks.ReentrantLock p = new java.util.concurrent.locks.ReentrantLock();
    public static boolean s = false;
    public static int w = 15;
    public static java.lang.Object x = new java.lang.Object();
    public static android.content.BroadcastReceiver y = new android.content.BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.a.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            int size;
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
                try {
                    if (com.umeng.commonsdk.framework.a.j != null) {
                        android.net.NetworkInfo unused = com.umeng.commonsdk.framework.a.k = com.umeng.commonsdk.framework.a.j.getActiveNetworkInfo();
                        if (com.umeng.commonsdk.framework.a.k == null || !com.umeng.commonsdk.framework.a.k.isAvailable()) {
                            com.umeng.commonsdk.statistics.common.ULog.i("--->>> network disconnected.");
                            boolean unused2 = com.umeng.commonsdk.framework.a.m = false;
                            return;
                        }
                        com.umeng.commonsdk.statistics.common.ULog.i("--->>> network isAvailable, check if there are any files to send.");
                        boolean unused3 = com.umeng.commonsdk.framework.a.m = true;
                        synchronized (com.umeng.commonsdk.framework.a.o) {
                            if (com.umeng.commonsdk.framework.a.n != null && (size = com.umeng.commonsdk.framework.a.n.size()) > 0) {
                                for (int i2 = 0; i2 < size; i2++) {
                                    ((com.umeng.commonsdk.framework.UMSenderStateNotify) com.umeng.commonsdk.framework.a.n.get(i2)).onConnectionAvailable();
                                }
                            }
                        }
                        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "网络状态通知：尝试发送 MSG_PROCESS_NEXT");
                        com.umeng.commonsdk.framework.a.d();
                        if (com.umeng.commonsdk.framework.a.k.getType() != 1 || context == null) {
                            return;
                        }
                        try {
                            if (com.umeng.commonsdk.framework.UMWorkDispatch.eventHasExist(com.umeng.commonsdk.internal.a.k)) {
                                return;
                            }
                            com.umeng.commonsdk.framework.UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.k, com.umeng.commonsdk.internal.b.a(context).a(), null);
                        } catch (java.lang.Throwable unused4) {
                        }
                    }
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, th);
                }
            }
        }
    };

    /* renamed from: com.umeng.commonsdk.framework.a$a, reason: collision with other inner class name */
    public static class FileObserverC0019a extends android.os.FileObserver {
        public FileObserverC0019a(java.lang.String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, java.lang.String str) {
            if ((i & 8) != 8) {
                return;
            }
            com.umeng.commonsdk.statistics.common.ULog.d("--->>> envelope file created >>> " + str);
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            com.umeng.commonsdk.framework.a.c(273);
        }
    }

    public a(android.content.Context context, android.os.Handler handler) {
        android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
        j = (android.net.ConnectivityManager) appContext.getSystemService("connectivity");
        f1453c = handler;
        try {
            if (a == null) {
                android.os.HandlerThread handlerThread = new android.os.HandlerThread("NetWorkSender");
                a = handlerThread;
                handlerThread.start();
                if (i == null) {
                    com.umeng.commonsdk.framework.a.FileObserverC0019a fileObserverC0019a = new com.umeng.commonsdk.framework.a.FileObserverC0019a(com.umeng.commonsdk.framework.UMFrUtils.getEnvelopeDirPath(context));
                    i = fileObserverC0019a;
                    fileObserverC0019a.startWatching();
                    com.umeng.commonsdk.statistics.common.ULog.d("--->>> FileMonitor has already started!");
                }
                if (com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(appContext, "android.permission.ACCESS_NETWORK_STATE") && j != null && l == null) {
                    android.content.IntentFilter intentFilter = new android.content.IntentFilter();
                    l = intentFilter;
                    intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                    if (y != null) {
                        appContext.registerReceiver(y, l);
                    }
                }
                n();
                if (b == null) {
                    b = new android.os.Handler(a.getLooper()) { // from class: com.umeng.commonsdk.framework.a.2
                        @Override // android.os.Handler
                        public void handleMessage(android.os.Message message) {
                            int i2 = message.what;
                            if (i2 == 273) {
                                com.umeng.commonsdk.statistics.common.ULog.d("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                                try {
                                    com.umeng.commonsdk.framework.a.p.tryLock(1L, java.util.concurrent.TimeUnit.SECONDS);
                                    try {
                                        com.umeng.commonsdk.framework.a.r();
                                    } catch (java.lang.Throwable unused) {
                                    }
                                    com.umeng.commonsdk.framework.a.p.unlock();
                                    return;
                                } catch (java.lang.Throwable unused2) {
                                    return;
                                }
                            }
                            if (i2 == 274) {
                                com.umeng.commonsdk.framework.a.p();
                            } else {
                                if (i2 != 512) {
                                    return;
                                }
                                com.umeng.commonsdk.framework.a.q();
                            }
                        }
                    };
                }
                com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).registImprintCallback(q, this);
                com.umeng.commonsdk.statistics.idtracking.ImprintHandler.getImprintService(context).registImprintCallback(r, this);
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
        }
    }

    public static void a(int i2, int i3) {
        android.os.Handler handler;
        if (!m || (handler = b) == null) {
            return;
        }
        handler.removeMessages(i2);
        android.os.Message messageObtainMessage = b.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessageDelayed(messageObtainMessage, i3);
    }

    public static void a(int i2, long j2) {
        android.os.Handler handler;
        if (!m || (handler = b) == null) {
            return;
        }
        android.os.Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> sendMsgDelayed: " + j2);
        b.sendMessageDelayed(messageObtainMessage, j2);
    }

    public static void a(com.umeng.commonsdk.framework.UMSenderStateNotify uMSenderStateNotify) {
        synchronized (o) {
            try {
                if (n == null) {
                    n = new java.util.ArrayList<>();
                }
                if (uMSenderStateNotify != null) {
                    for (int i2 = 0; i2 < n.size(); i2++) {
                        if (uMSenderStateNotify == n.get(i2)) {
                            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> addConnStateObserver: input item has exist.");
                            return;
                        }
                    }
                    n.add(uMSenderStateNotify);
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(com.umeng.commonsdk.framework.UMModuleRegister.getAppContext(), th);
            }
        }
    }

    public static boolean a() {
        boolean z;
        synchronized (x) {
            z = s;
        }
        return z;
    }

    public static int b() {
        int i2;
        synchronized (x) {
            i2 = w;
        }
        return i2;
    }

    public static void b(int i2) {
        android.os.Handler handler;
        if (!m || (handler = b) == null || handler.hasMessages(i2)) {
            return;
        }
        android.os.Message messageObtainMessage = b.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessage(messageObtainMessage);
    }

    public static void c() {
    }

    public static void c(int i2) {
        android.os.Handler handler;
        if (!m || (handler = b) == null) {
            return;
        }
        android.os.Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        b.sendMessage(messageObtainMessage);
    }

    public static void d() {
        if (p.tryLock()) {
            try {
                b(273);
            } finally {
                p.unlock();
            }
        }
    }

    public static void e() {
        a(274, 3000);
    }

    private void n() {
        synchronized (x) {
            if ("11".equals(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.commonsdk.framework.UMModuleRegister.getAppContext(), q, ""))) {
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                s = true;
                w = 15;
                int iIntValue = java.lang.Integer.valueOf(com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(com.umeng.commonsdk.framework.UMModuleRegister.getAppContext(), r, "15")).intValue();
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                if (iIntValue < 3 || iIntValue > 90) {
                    w = 15;
                } else {
                    w = iIntValue * 1000;
                }
            } else {
                s = false;
            }
        }
    }

    public static void o() {
        if (a != null) {
            a = null;
        }
        if (b != null) {
            b = null;
        }
        if (f1453c != null) {
            f1453c = null;
        }
    }

    public static void p() {
        int size;
        synchronized (o) {
            if (n != null && (size = n.size()) > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    n.get(i2).onSenderIdle();
                }
            }
        }
    }

    public static void q() {
    }

    public static void r() {
        com.umeng.commonsdk.statistics.common.ULog.d("--->>> handleProcessNext: Enter...");
        if (m) {
            android.content.Context appContext = com.umeng.commonsdk.framework.UMModuleRegister.getAppContext();
            try {
                if (com.umeng.commonsdk.framework.UMFrUtils.envelopeFileNumber(appContext) > 0) {
                    com.umeng.commonsdk.statistics.common.ULog.d("--->>> The envelope file exists.");
                    if (com.umeng.commonsdk.framework.UMFrUtils.envelopeFileNumber(appContext) > 200) {
                        com.umeng.commonsdk.statistics.common.ULog.d("--->>> Number of envelope files is greater than 200, remove old files first.");
                        com.umeng.commonsdk.framework.UMFrUtils.removeRedundantEnvelopeFiles(appContext, 200);
                    }
                    java.io.File envelopeFile = com.umeng.commonsdk.framework.UMFrUtils.getEnvelopeFile(appContext);
                    if (envelopeFile != null) {
                        java.lang.String path = envelopeFile.getPath();
                        com.umeng.commonsdk.statistics.common.ULog.d("--->>> Ready to send envelope file [" + path + "].");
                        com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> send envelope file [ " + path + "].");
                        if (!new com.umeng.commonsdk.statistics.c(appContext).a(envelopeFile)) {
                            com.umeng.commonsdk.statistics.common.ULog.d("--->>> Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        com.umeng.commonsdk.statistics.common.ULog.d("--->>> Send envelope file success, delete it.");
                        if (!com.umeng.commonsdk.framework.UMFrUtils.removeEnvelopeFile(envelopeFile)) {
                            com.umeng.commonsdk.statistics.common.ULog.d("--->>> Failed to delete already processed file. We try again after delete failed.");
                            com.umeng.commonsdk.framework.UMFrUtils.removeEnvelopeFile(envelopeFile);
                        }
                        c(273);
                        return;
                    }
                }
                e();
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(appContext, th);
            }
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
    public void onImprintValueChanged(java.lang.String str, java.lang.String str2) {
        synchronized (x) {
            if (q.equals(str)) {
                if ("11".equals(str2)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                    s = true;
                } else {
                    s = false;
                }
            }
            if (r.equals(str)) {
                int iIntValue = java.lang.Integer.valueOf(str2).intValue();
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                if (iIntValue < 3 || iIntValue > 90) {
                    w = 15000;
                } else {
                    w = iIntValue * 1000;
                }
                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> really set report_interval value to: " + w);
            }
        }
    }
}
