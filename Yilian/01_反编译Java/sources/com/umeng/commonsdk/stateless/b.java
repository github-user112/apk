package com.umeng.commonsdk.stateless;

/* loaded from: classes.dex */
public class b {
    public static final int a = 273;
    public static android.content.Context b = null;

    /* renamed from: c, reason: collision with root package name */
    public static android.os.HandlerThread f1500c = null;

    /* renamed from: d, reason: collision with root package name */
    public static android.os.Handler f1501d = null;

    /* renamed from: f, reason: collision with root package name */
    public static final int f1503f = 274;

    /* renamed from: g, reason: collision with root package name */
    public static final int f1504g = 275;
    public static final int h = 512;
    public static com.umeng.commonsdk.stateless.b.a i = null;
    public static android.content.IntentFilter j = null;
    public static boolean k = false;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.Object f1502e = new java.lang.Object();
    public static java.util.LinkedList<java.lang.String> l = new java.util.LinkedList<>();
    public static android.content.BroadcastReceiver m = new android.content.BroadcastReceiver() { // from class: com.umeng.commonsdk.stateless.b.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(android.content.Context context, android.content.Intent intent) {
            android.net.ConnectivityManager connectivityManager;
            if (context == null || intent == null) {
                return;
            }
            try {
                if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    android.content.Context unused = com.umeng.commonsdk.stateless.b.b = context.getApplicationContext();
                    if (com.umeng.commonsdk.stateless.b.b != null && (connectivityManager = (android.net.ConnectivityManager) com.umeng.commonsdk.stateless.b.b.getSystemService("connectivity")) != null) {
                        android.net.NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isAvailable()) {
                            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>网络断连： 2号数据仓");
                            boolean unused2 = com.umeng.commonsdk.stateless.b.k = false;
                        } else {
                            boolean unused3 = com.umeng.commonsdk.stateless.b.k = true;
                            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>网络可用： 触发2号数据仓信封消费动作。");
                            com.umeng.commonsdk.stateless.b.b(274);
                        }
                    }
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
            }
        }
    };

    public static class a extends android.os.FileObserver {
        public a(java.lang.String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, java.lang.String str) {
            if ((i & 8) != 8) {
                return;
            }
            com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            com.umeng.commonsdk.stateless.b.a(274);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x00b7 A[Catch: all -> 0x00b9, DONT_GENERATE, TryCatch #1 {, blocks: (B:28:0x00b7, B:27:0x00b4, B:5:0x0008, B:7:0x0010, B:9:0x0014, B:11:0x0024, B:13:0x004b, B:14:0x0055, B:15:0x0066, B:17:0x006a, B:18:0x0077, B:20:0x0081, B:22:0x0092, B:24:0x00a2), top: B:33:0x0008, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(android.content.Context r6) {
        /*
            r5 = this;
            r5.<init>()
            java.lang.Object r0 = com.umeng.commonsdk.stateless.b.f1502e
            monitor-enter(r0)
            if (r6 == 0) goto Lb7
            android.content.Context r1 = r6.getApplicationContext()     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b.b = r1     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto Lb7
            android.os.HandlerThread r1 = com.umeng.commonsdk.stateless.b.f1500c     // Catch: java.lang.Throwable -> Lb3
            if (r1 != 0) goto Lb7
            android.os.HandlerThread r1 = new android.os.HandlerThread     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "SL-NetWorkSender"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b.f1500c = r1     // Catch: java.lang.Throwable -> Lb3
            r1.start()     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b$a r1 = com.umeng.commonsdk.stateless.b.i     // Catch: java.lang.Throwable -> Lb3
            if (r1 != 0) goto L66
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            r1.<init>()     // Catch: java.lang.Throwable -> Lb3
            android.content.Context r2 = com.umeng.commonsdk.stateless.b.b     // Catch: java.lang.Throwable -> Lb3
            java.io.File r2 = r2.getFilesDir()     // Catch: java.lang.Throwable -> Lb3
            r1.append(r2)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = java.io.File.separator     // Catch: java.lang.Throwable -> Lb3
            r1.append(r2)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = ".emitter"
            r1.append(r2)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lb3
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> Lb3
            r2.<init>(r1)     // Catch: java.lang.Throwable -> Lb3
            boolean r3 = r2.exists()     // Catch: java.lang.Throwable -> Lb3
            if (r3 != 0) goto L55
            java.lang.String r3 = "MobclickRT"
            java.lang.String r4 = "--->>> 2号数据仓目录不存在，创建之。"
            com.umeng.commonsdk.debug.UMRTLog.e(r3, r4)     // Catch: java.lang.Throwable -> Lb3
            r2.mkdir()     // Catch: java.lang.Throwable -> Lb3
        L55:
            com.umeng.commonsdk.stateless.b$a r2 = new com.umeng.commonsdk.stateless.b$a     // Catch: java.lang.Throwable -> Lb3
            r2.<init>(r1)     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b.i = r2     // Catch: java.lang.Throwable -> Lb3
            r2.startWatching()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r1 = "MobclickRT"
            java.lang.String r2 = "--->>> 2号数据仓File Monitor启动."
            com.umeng.commonsdk.debug.UMRTLog.e(r1, r2)     // Catch: java.lang.Throwable -> Lb3
        L66:
            android.os.Handler r1 = com.umeng.commonsdk.stateless.b.f1501d     // Catch: java.lang.Throwable -> Lb3
            if (r1 != 0) goto L77
            com.umeng.commonsdk.stateless.b$2 r1 = new com.umeng.commonsdk.stateless.b$2     // Catch: java.lang.Throwable -> Lb3
            android.os.HandlerThread r2 = com.umeng.commonsdk.stateless.b.f1500c     // Catch: java.lang.Throwable -> Lb3
            android.os.Looper r2 = r2.getLooper()     // Catch: java.lang.Throwable -> Lb3
            r1.<init>(r2)     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b.f1501d = r1     // Catch: java.lang.Throwable -> Lb3
        L77:
            android.content.Context r1 = com.umeng.commonsdk.stateless.b.b     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r1 = com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto Lb7
            java.lang.String r1 = "walle"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lb3
            r3 = 0
            java.lang.String r4 = "[stateless] begin register receiver"
            r2[r3] = r4     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.statistics.common.ULog.i(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            android.content.IntentFilter r1 = com.umeng.commonsdk.stateless.b.j     // Catch: java.lang.Throwable -> Lb3
            if (r1 != 0) goto Lb7
            android.content.IntentFilter r1 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> Lb3
            r1.<init>()     // Catch: java.lang.Throwable -> Lb3
            com.umeng.commonsdk.stateless.b.j = r1     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r2 = "android.net.conn.CONNECTIVITY_CHANGE"
            r1.addAction(r2)     // Catch: java.lang.Throwable -> Lb3
            android.content.BroadcastReceiver r1 = com.umeng.commonsdk.stateless.b.m     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto Lb7
            java.lang.String r1 = "MobclickRT"
            java.lang.String r2 = "--->>> 2号数据仓：注册网络状态监听器。"
            com.umeng.commonsdk.debug.UMRTLog.e(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            android.content.Context r1 = com.umeng.commonsdk.stateless.b.b     // Catch: java.lang.Throwable -> Lb3
            android.content.BroadcastReceiver r2 = com.umeng.commonsdk.stateless.b.m     // Catch: java.lang.Throwable -> Lb3
            android.content.IntentFilter r3 = com.umeng.commonsdk.stateless.b.j     // Catch: java.lang.Throwable -> Lb3
            r1.registerReceiver(r2, r3)     // Catch: java.lang.Throwable -> Lb3
            goto Lb7
        Lb3:
            r1 = move-exception
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(r6, r1)     // Catch: java.lang.Throwable -> Lb9
        Lb7:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb9
            return
        Lb9:
            r6 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb9
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.b.<init>(android.content.Context):void");
    }

    public static void a(int i2) {
        android.os.Handler handler;
        if (!k || (handler = f1501d) == null) {
            return;
        }
        android.os.Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i2;
        f1501d.sendMessage(messageObtainMessage);
    }

    public static boolean a() {
        synchronized (f1502e) {
            return i != null;
        }
    }

    public static void b() {
        com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>信封构建成功： 触发2号数据仓信封消费动作。");
        b(274);
    }

    public static void b(int i2) {
        try {
            if (!k || f1501d == null || f1501d.hasMessages(i2)) {
                return;
            }
            android.os.Message messageObtainMessage = f1501d.obtainMessage();
            messageObtainMessage.what = i2;
            f1501d.sendMessage(messageObtainMessage);
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(b, th);
        }
    }

    public static void c() {
        b(f1504g);
    }

    public static void d() {
        b(512);
    }

    public static void j() {
        java.io.File[] fileArrC = com.umeng.commonsdk.stateless.d.c(b);
        if (fileArrC != null) {
            if (l.size() > 0) {
                l.clear();
            }
            for (java.io.File file : fileArrC) {
                l.add(file.getAbsolutePath());
            }
        }
    }

    public static java.lang.String k() {
        java.lang.String str = null;
        try {
            java.lang.String strPeek = l.peek();
            if (strPeek == null) {
                return strPeek;
            }
            try {
                l.removeFirst();
                return strPeek;
            } catch (java.lang.Throwable unused) {
                str = strPeek;
                return str;
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public static void l() {
        java.lang.String strPollFirst;
        if (l.size() <= 0) {
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> todoList无内容，无需处理。");
            return;
        }
        do {
            strPollFirst = l.pollFirst();
            if (!android.text.TextUtils.isEmpty(strPollFirst)) {
                java.io.File file = new java.io.File(strPollFirst);
                if (file.exists()) {
                    com.umeng.commonsdk.stateless.c cVar = new com.umeng.commonsdk.stateless.c(b);
                    byte[] bArrA = null;
                    try {
                        bArrA = com.umeng.commonsdk.stateless.d.a(strPollFirst);
                    } catch (java.lang.Exception unused) {
                    }
                    java.lang.String name = file.getName();
                    java.lang.String strSubstring = !android.text.TextUtils.isEmpty(name) ? name.substring(0, 1) : "u";
                    java.lang.String strD = com.umeng.commonsdk.stateless.d.d(name);
                    java.lang.String str = com.umeng.commonsdk.stateless.a.j;
                    java.lang.String strC = com.umeng.commonsdk.stateless.d.c(strD);
                    if (com.umeng.commonsdk.vchannel.a.f1613c.equalsIgnoreCase(strC)) {
                        str = com.umeng.commonsdk.vchannel.a.a;
                    }
                    if (cVar.a(bArrA, strC, str, strSubstring) && !file.delete()) {
                        file.delete();
                    }
                } else {
                    com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 信封文件不存在，处理下一个文件。");
                }
            }
        } while (strPollFirst != null);
        l.clear();
    }

    public static void m() {
        java.io.File fileA;
        java.io.File file;
        if (!k || b == null) {
            return;
        }
        do {
            try {
                fileA = com.umeng.commonsdk.stateless.d.a(b);
                if (fileA != null && fileA.getParentFile() != null && !android.text.TextUtils.isEmpty(fileA.getParentFile().getName())) {
                    com.umeng.commonsdk.stateless.c cVar = new com.umeng.commonsdk.stateless.c(b);
                    java.lang.String str = new java.lang.String(android.util.Base64.decode(fileA.getParentFile().getName(), 0));
                    if (com.umeng.commonsdk.internal.a.a.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.b.equalsIgnoreCase(str) || com.umeng.commonsdk.internal.a.A.equalsIgnoreCase(str)) {
                        file = new java.io.File(fileA.getAbsolutePath());
                    } else {
                        com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] handleProcessNext, pathUrl is " + str);
                        byte[] bArrA = null;
                        try {
                            bArrA = com.umeng.commonsdk.stateless.d.a(fileA.getAbsolutePath());
                        } catch (java.lang.Exception unused) {
                        }
                        java.lang.String str2 = com.umeng.commonsdk.vchannel.a.f1613c.equalsIgnoreCase(str) ? com.umeng.commonsdk.vchannel.a.a : "";
                        java.lang.String str3 = com.umeng.commonsdk.statistics.UMServerURL.PATH_SHARE.equalsIgnoreCase(str) ? com.umeng.analytics.pro.ai.az : "u";
                        if (com.umeng.commonsdk.statistics.UMServerURL.PATH_PUSH_LAUNCH.equalsIgnoreCase(str) || com.umeng.commonsdk.statistics.UMServerURL.PATH_PUSH_REGIST.equalsIgnoreCase(str) || com.umeng.commonsdk.statistics.UMServerURL.PATH_PUSH_LOG.equalsIgnoreCase(str)) {
                            str3 = "p";
                        }
                        if (!cVar.a(bArrA, str, str2, str3)) {
                            com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] Send envelope file success, delete it.");
                        file = new java.io.File(fileA.getAbsolutePath());
                        if (!file.delete()) {
                            com.umeng.commonsdk.statistics.common.ULog.i("walle", "[stateless] Failed to delete already processed file. We try again after delete failed.");
                        }
                    }
                    file.delete();
                }
            } catch (java.lang.Throwable th) {
                com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(b, th);
            }
        } while (fileA != null);
        n();
    }

    public static void n() {
        try {
            java.io.File file = new java.io.File(b.getFilesDir() + java.io.File.separator + com.umeng.commonsdk.stateless.a.f1497e);
            if (file.exists() && file.isDirectory()) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> 2号数据仓：删除stateless目录。");
                com.umeng.commonsdk.stateless.d.a(file);
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void o() {
        if (!k || b == null) {
            return;
        }
        j();
        l();
        c();
    }

    public static void p() {
        try {
            java.io.File file = new java.io.File(b.getFilesDir() + java.io.File.separator + com.umeng.commonsdk.stateless.a.f1497e);
            if (file.exists() && file.isDirectory()) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>>2号数据仓：检测到stateless目录。");
                b(273);
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void q() {
        p();
    }

    public static void r() {
    }
}
