package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ga {
    public static boolean a = true;
    public static java.text.SimpleDateFormat b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1113c = true;

    /* renamed from: d, reason: collision with root package name */
    public static int f1114d = 30720;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.StringBuilder f1115e = null;

    /* renamed from: f, reason: collision with root package name */
    public static java.lang.StringBuilder f1116f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f1117g = false;
    public static com.tencent.bugly.proguard.ga.a h = null;
    public static java.lang.String i = null;
    public static java.lang.String j = null;
    public static android.content.Context k = null;
    public static java.lang.String l = null;
    public static boolean m = false;
    public static boolean n = false;
    public static java.util.concurrent.ExecutorService o;
    public static int p;
    public static final java.lang.Object q = new java.lang.Object();

    public static class a {
        public boolean a;
        public java.io.File b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1118c;

        /* renamed from: d, reason: collision with root package name */
        public long f1119d;

        /* renamed from: e, reason: collision with root package name */
        public long f1120e = 30720;

        public a(java.lang.String str) {
            if (str == null || str.equals("")) {
                return;
            }
            this.f1118c = str;
            this.a = a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean a() {
            try {
                java.io.File file = new java.io.File(this.f1118c);
                this.b = file;
                if (file.exists() && !this.b.delete()) {
                    this.a = false;
                    return false;
                }
                if (this.b.createNewFile()) {
                    return true;
                }
                this.a = false;
                return false;
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
                this.a = false;
                return false;
            }
        }

        public boolean a(java.lang.String str) throws java.io.IOException {
            if (!this.a) {
                return false;
            }
            java.io.FileOutputStream fileOutputStream = null;
            try {
                java.io.FileOutputStream fileOutputStream2 = new java.io.FileOutputStream(this.b, true);
                try {
                    fileOutputStream2.write(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                    this.f1119d += r10.length;
                    this.a = true;
                    try {
                        fileOutputStream2.close();
                    } catch (java.io.IOException unused) {
                    }
                    return true;
                } catch (java.lang.Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        com.tencent.bugly.proguard.aa.b(th);
                        this.a = false;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (java.io.IOException unused2) {
                            }
                        }
                        return false;
                    } catch (java.lang.Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (java.io.IOException unused3) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
            }
        }
    }

    public static class b implements java.lang.Runnable {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1121c;

        public b(java.lang.String str, java.lang.String str2, java.lang.String str3) {
            this.a = str;
            this.b = str2;
            this.f1121c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.proguard.ga.f(this.a, this.b, this.f1121c);
        }
    }

    public static class c implements java.lang.Runnable {
        public final /* synthetic */ java.lang.String a;
        public final /* synthetic */ java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1122c;

        public c(java.lang.String str, java.lang.String str2, java.lang.String str3) {
            this.a = str;
            this.b = str2;
            this.f1122c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.proguard.ga.d(this.a, this.b, this.f1122c);
        }
    }

    static {
        try {
            b = new java.text.SimpleDateFormat("MM-dd HH:mm:ss");
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.a(th.getCause());
        }
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3, long j2) {
        f1115e.setLength(0);
        if (str3.length() > 30720) {
            str3 = str3.substring(str3.length() - javax.jmdns.impl.constants.DNSOperationCode.OpCode_MASK, str3.length() - 1);
        }
        java.util.Date date = new java.util.Date();
        java.text.SimpleDateFormat simpleDateFormat = b;
        java.lang.String string = simpleDateFormat != null ? simpleDateFormat.format(date) : date.toString();
        java.lang.StringBuilder sb = f1115e;
        sb.append(string);
        sb.append(" ");
        sb.append(p);
        sb.append(" ");
        sb.append(j2);
        e.a.c.a.a.B(sb, " ", str, " ", str2);
        sb.append(": ");
        sb.append(str3);
        sb.append("\u0001\r\n");
        return f1115e.toString();
    }

    public static void a(int i2) {
        synchronized (q) {
            f1114d = i2;
            if (i2 < 0) {
                f1114d = 0;
            } else if (i2 > 30720) {
                f1114d = javax.jmdns.impl.constants.DNSOperationCode.OpCode_MASK;
            }
        }
    }

    public static synchronized void a(android.content.Context context) {
        if (m || context == null || !f1113c) {
            return;
        }
        try {
            o = java.util.concurrent.Executors.newSingleThreadExecutor();
            f1116f = new java.lang.StringBuilder(0);
            f1115e = new java.lang.StringBuilder(0);
            k = context;
            com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
            i = aVarA.h;
            aVarA.getClass();
            j = "";
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(k.getFilesDir().getPath());
            sb.append(com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
            sb.append("buglylog_");
            sb.append(i);
            sb.append("_");
            sb.append(j);
            sb.append(".txt");
            l = sb.toString();
            p = android.os.Process.myPid();
        } catch (java.lang.Throwable unused) {
        }
        m = true;
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (th == null) {
            return;
        }
        java.lang.String message = th.getMessage();
        if (message == null) {
            message = "";
        }
        c(str, str2, message + '\n' + com.tencent.bugly.proguard.ha.a(th));
    }

    public static byte[] a() {
        if (f1113c) {
            return com.tencent.bugly.proguard.ha.a((java.io.File) null, f1116f.toString(), "BuglyLog.txt");
        }
        return null;
    }

    public static byte[] b() {
        return a ? a() : c();
    }

    public static synchronized void c(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.util.concurrent.ExecutorService executorService;
        java.lang.Runnable cVar;
        if (m && f1113c) {
            try {
                if (n) {
                    executorService = o;
                    cVar = new com.tencent.bugly.proguard.ga.b(str, str2, str3);
                } else {
                    executorService = o;
                    cVar = new com.tencent.bugly.proguard.ga.c(str, str2, str3);
                }
                executorService.execute(cVar);
            } catch (java.lang.Exception e2) {
                com.tencent.bugly.proguard.aa.a(e2);
            }
        }
    }

    public static byte[] c() {
        if (!f1113c) {
            return null;
        }
        if (n) {
            com.tencent.bugly.proguard.aa.c("[LogUtil] Get user log from native.", new java.lang.Object[0]);
            java.lang.String strD = d();
            if (strD != null) {
                com.tencent.bugly.proguard.aa.c("[LogUtil] Got user log from native: %d bytes", java.lang.Integer.valueOf(strD.length()));
                return com.tencent.bugly.proguard.ha.a((java.io.File) null, strD, "BuglyNativeLog.txt");
            }
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        synchronized (q) {
            if (h != null && h.a && h.b != null && h.b.length() > 0) {
                sb.append(com.tencent.bugly.proguard.ha.a(h.b, javax.jmdns.impl.constants.DNSOperationCode.OpCode_MASK, true));
            }
            if (f1116f != null && f1116f.length() > 0) {
                sb.append(f1116f.toString());
            }
        }
        return com.tencent.bugly.proguard.ha.a((java.io.File) null, sb.toString(), "BuglyLog.txt");
    }

    public static java.lang.String d() {
        try {
            com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
            if (aVarN == null || aVarN.la == null) {
                return null;
            }
            return aVarN.la.getLogFromNative();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static synchronized void d(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (a) {
            e(str, str2, str3);
        } else {
            g(str, str2, str3);
        }
    }

    public static synchronized void e(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.String strA = a(str, str2, str3, android.os.Process.myTid());
        synchronized (q) {
            try {
                f1116f.append(strA);
                if (f1116f.length() >= f1114d) {
                    f1116f = f1116f.delete(0, f1116f.indexOf("\u0001\r\n") + 1);
                }
            } finally {
            }
        }
    }

    public static boolean f(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        try {
            com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
            if (aVarN == null || aVarN.la == null) {
                return false;
            }
            return aVarN.la.appendLogToNative(str, str2, str3);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public static synchronized void g(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.String strA = a(str, str2, str3, android.os.Process.myTid());
        synchronized (q) {
            try {
                f1116f.append(strA);
            } catch (java.lang.Throwable unused) {
            }
            if (f1116f.length() <= f1114d) {
                return;
            }
            if (f1117g) {
                return;
            }
            f1117g = true;
            if (h == null) {
                h = new com.tencent.bugly.proguard.ga.a(l);
            } else if (h.b == null || h.b.length() + f1116f.length() > h.f1120e) {
                h.a();
            }
            if (h.a(f1116f.toString())) {
                f1116f.setLength(0);
                f1117g = false;
            }
        }
    }
}
