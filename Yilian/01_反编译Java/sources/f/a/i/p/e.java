package f.a.i.p;

/* loaded from: classes.dex */
public class e implements f.a.i.p.c.a {
    public static final java.util.concurrent.ScheduledExecutorService j = new java.util.concurrent.ScheduledThreadPoolExecutor(1, new f.a.i.p.e.a());
    public android.content.Context a;
    public f.a.i.p.d b;

    /* renamed from: c, reason: collision with root package name */
    public f.a.i.h.f f2980c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.Runnable f2981d = new f.a.i.p.e.b();

    /* renamed from: e, reason: collision with root package name */
    public java.lang.Runnable f2982e = new f.a.i.p.e.c(this);

    /* renamed from: f, reason: collision with root package name */
    public java.lang.Runnable f2983f = new f.a.i.p.e.d(this);

    /* renamed from: g, reason: collision with root package name */
    public java.lang.Runnable f2984g = new f.a.i.p.e.RunnableC0089e(this);
    public java.lang.String h = "while true\ndo delay=1\nsleep $delay\nservice=`ps| grep net.easyconn | grep -v grep`\nif [ ! \"$service\" ];then \nadb-ec -P 5039 ghost iptables -t nat -F\nadb-ec -P 5039 ghost ip route del default via 172.16.1.1\necho \"exit ok\"\nbreak\nfi \necho $service\nsleep $delay\ndone\n";
    public java.lang.Runnable i = new f.a.i.p.e.f();

    public class a implements java.util.concurrent.ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            return new java.lang.Thread(runnable, "NetShareManager_thread");
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            f.a.i.p.e eVar = f.a.i.p.e.this;
            java.lang.Process processExec = null;
            if (eVar == null) {
                throw null;
            }
            e.e.a.g.c("NetShareManager executeCommand set timeout:5000", new java.lang.Object[0]);
            try {
                processExec = java.lang.Runtime.getRuntime().exec("ping -c 3 -w 100 m.taobao.com");
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
            f.a.i.p.e.h hVar = new f.a.i.p.e.h(eVar, processExec);
            hVar.start();
            try {
                try {
                    hVar.join(5000L);
                    e.e.a.g.c("NetShareManager worker.exit:" + hVar.b, new java.lang.Object[0]);
                    if (hVar.b.intValue() != 0) {
                        try {
                            java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost setprop net.dns1 114.114.114.114");
                        } catch (java.io.IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (processExec == null) {
                        return;
                    }
                } catch (java.lang.InterruptedException e4) {
                    e.e.a.g.a("NetShareManager executeCommand exception:" + e4.getMessage());
                    if (processExec == null) {
                        return;
                    }
                }
                processExec.destroy();
            } catch (java.lang.Throwable th) {
                if (processExec != null) {
                    processExec.destroy();
                }
                throw th;
            }
        }
    }

    public class c implements java.lang.Runnable {
        public c(f.a.i.p.e eVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.io.IOException {
            /*
                r4 = this;
                java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Exception -> L2c
                java.lang.String r1 = "adb-ec -P 5039 ghost ps | grep \"S adb-ec\""
                java.lang.Process r0 = r0.exec(r1)     // Catch: java.lang.Exception -> L2c
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L2c
                java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L2c
                java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Exception -> L2c
                r2.<init>(r0)     // Catch: java.lang.Exception -> L2c
                r1.<init>(r2)     // Catch: java.lang.Exception -> L2c
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2c
                r0.<init>()     // Catch: java.lang.Exception -> L2c
            L1d:
                java.lang.String r2 = r1.readLine()     // Catch: java.lang.Exception -> L2c
                if (r2 == 0) goto L27
                r0.append(r2)     // Catch: java.lang.Exception -> L2c
                goto L1d
            L27:
                java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L2c
                goto L32
            L2c:
                r0 = move-exception
                r1 = 0
                r0.printStackTrace()
                r0 = r1
            L32:
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 != 0) goto L54
                java.lang.String r1 = "NetShareManager ps value:"
                java.lang.String r1 = e.a.c.a.a.e(r1, r0)
                r2 = 0
                java.lang.Object[] r2 = new java.lang.Object[r2]
                e.e.a.g.c(r1, r2)
                java.lang.String r1 = "\\s+"
                java.lang.String[] r0 = r0.split(r1)
                if (r0 == 0) goto L54
                int r1 = r0.length
                r2 = 2
                if (r1 < r2) goto L54
                r1 = 1
                r0 = r0[r1]
                goto L56
            L54:
                java.lang.String r0 = ""
            L56:
                java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L73
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L73
                r2.<init>()     // Catch: java.io.IOException -> L73
                java.lang.String r3 = "adb-ec -P 5039 ghost kill -9 "
                r2.append(r3)     // Catch: java.io.IOException -> L73
                java.lang.String r0 = r0.trim()     // Catch: java.io.IOException -> L73
                r2.append(r0)     // Catch: java.io.IOException -> L73
                java.lang.String r0 = r2.toString()     // Catch: java.io.IOException -> L73
                r1.exec(r0)     // Catch: java.io.IOException -> L73
                goto L77
            L73:
                r0 = move-exception
                r0.printStackTrace()
            L77:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.i.p.e.c.run():void");
        }
    }

    public class d implements java.lang.Runnable {
        public d(f.a.i.p.e eVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.io.IOException {
            /*
                r4 = this;
                java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Exception -> L2c
                java.lang.String r1 = "adb-ec -P 5039 ghost ps | grep netshare"
                java.lang.Process r0 = r0.exec(r1)     // Catch: java.lang.Exception -> L2c
                java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L2c
                java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L2c
                java.io.InputStream r0 = r0.getInputStream()     // Catch: java.lang.Exception -> L2c
                r2.<init>(r0)     // Catch: java.lang.Exception -> L2c
                r1.<init>(r2)     // Catch: java.lang.Exception -> L2c
                java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L2c
                r0.<init>()     // Catch: java.lang.Exception -> L2c
            L1d:
                java.lang.String r2 = r1.readLine()     // Catch: java.lang.Exception -> L2c
                if (r2 == 0) goto L27
                r0.append(r2)     // Catch: java.lang.Exception -> L2c
                goto L1d
            L27:
                java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L2c
                goto L32
            L2c:
                r0 = move-exception
                r1 = 0
                r0.printStackTrace()
                r0 = r1
            L32:
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                if (r1 != 0) goto L54
                java.lang.String r1 = "NetShareManager ps value:"
                java.lang.String r1 = e.a.c.a.a.e(r1, r0)
                r2 = 0
                java.lang.Object[] r2 = new java.lang.Object[r2]
                e.e.a.g.c(r1, r2)
                java.lang.String r1 = "\\s+"
                java.lang.String[] r0 = r0.split(r1)
                if (r0 == 0) goto L54
                int r1 = r0.length
                r2 = 2
                if (r1 < r2) goto L54
                r1 = 1
                r0 = r0[r1]
                goto L56
            L54:
                java.lang.String r0 = ""
            L56:
                java.lang.Runtime r1 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L73
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L73
                r2.<init>()     // Catch: java.io.IOException -> L73
                java.lang.String r3 = "adb-ec -P 5039 ghost kill -9 "
                r2.append(r3)     // Catch: java.io.IOException -> L73
                java.lang.String r0 = r0.trim()     // Catch: java.io.IOException -> L73
                r2.append(r0)     // Catch: java.io.IOException -> L73
                java.lang.String r0 = r2.toString()     // Catch: java.io.IOException -> L73
                r1.exec(r0)     // Catch: java.io.IOException -> L73
                goto L77
            L73:
                r0 = move-exception
                r0.printStackTrace()
            L77:
                java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L81
                java.lang.String r1 = "adb-ec -P 5039 ghost iptables -t nat -F"
                r0.exec(r1)     // Catch: java.io.IOException -> L81
                goto L85
            L81:
                r0 = move-exception
                r0.printStackTrace()
            L85:
                java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.io.IOException -> L8f
                java.lang.String r1 = "adb-ec -P 5039 ghost ip route del default via 172.16.1.1"
                r0.exec(r1)     // Catch: java.io.IOException -> L8f
                goto L93
            L8f:
                r0 = move-exception
                r0.printStackTrace()
            L93:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: f.a.i.p.e.d.run():void");
        }
    }

    /* renamed from: f.a.i.p.e$e, reason: collision with other inner class name */
    public class RunnableC0089e implements java.lang.Runnable {
        public RunnableC0089e(f.a.i.p.e eVar) {
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            e.e.a.g.c("NetShareManager usbStart run", new java.lang.Object[0]);
            try {
                java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost /system/xbin/ec-start-netshare.sh -a 127.0.0.1 -b 31338 -c 127.0.0.1  -d 10923 -e 127.0.0.1 -f 8053 -g 127.0.0.1 -h 10924");
                e.e.a.g.c("NetShareManager usbStart Runtime.getRuntime().exec", new java.lang.Object[0]);
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public class f implements java.lang.Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            e.e.a.g.c("NetShareManager mExitCheckCmd run", new java.lang.Object[0]);
            java.io.File file = new java.io.File(f.a.i.p.e.this.a.getFilesDir(), "EcExitCheck.sh");
            if (!file.exists()) {
                try {
                    file.createNewFile();
                    java.io.OutputStreamWriter outputStreamWriter = new java.io.OutputStreamWriter(new java.io.FileOutputStream(file));
                    outputStreamWriter.write(f.a.i.p.e.this.h);
                    outputStreamWriter.flush();
                    outputStreamWriter.close();
                } catch (java.io.FileNotFoundException e2) {
                    e2.printStackTrace();
                } catch (java.io.IOException e3) {
                    e3.printStackTrace();
                }
            }
            try {
                java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost chmod 777 " + file.getAbsolutePath());
                java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost " + file.getAbsolutePath());
                e.e.a.g.c("NetShareManager mExitCheckCmd Runtime.getRuntime().exec", new java.lang.Object[0]);
            } catch (java.lang.Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    public class g implements java.lang.Runnable {
        public java.lang.String a;

        public g(f.a.i.p.e eVar, java.lang.String str) {
            this.a = "";
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            if (android.text.TextUtils.isEmpty(this.a)) {
                e.e.a.g.c("NetShareManager mDate isEmpty", new java.lang.Object[0]);
                return;
            }
            e.e.a.g.c("NetShareManager DateSetCmd run", new java.lang.Object[0]);
            try {
                java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost date -s " + this.a);
                e.e.a.g.c("NetShareManager DateSetCmd Runtime.getRuntime().exec", new java.lang.Object[0]);
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public class h extends java.lang.Thread {
        public final java.lang.Process a;
        public java.lang.Integer b;

        public h(f.a.i.p.e eVar, java.lang.Process process) {
            this.a = process;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.b = java.lang.Integer.valueOf(this.a.waitFor());
            } catch (java.lang.InterruptedException unused) {
            }
        }
    }

    public class i implements java.lang.Runnable {
        public java.lang.String a;

        public i(f.a.i.p.e eVar, java.lang.String str) {
            this.a = "";
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() throws java.io.IOException {
            if (android.text.TextUtils.isEmpty(this.a)) {
                e.e.a.g.c("NetShareManager mRemoteIP isEmpty", new java.lang.Object[0]);
                return;
            }
            e.e.a.g.c("NetShareManager wifiStart run", new java.lang.Object[0]);
            try {
                java.lang.Runtime.getRuntime().exec("adb-ec -P 5039 ghost /system/xbin/ec-start-netshare.sh -a 0.0.0.0 -b 31338 -c " + this.a + " -d 10923 -e 127.0.0.1 -f 8053 -g " + this.a + " -h 10924");
                e.e.a.g.c("NetShareManager wifiStart Runtime.getRuntime().exec", new java.lang.Object[0]);
            } catch (java.io.IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public e(android.content.Context context) {
        this.a = context;
    }

    public void a() {
        f.a.i.p.d dVar = this.b;
        if (dVar != null) {
            dVar.c();
        }
        f.a.i.p.d dVar2 = this.b;
        if (dVar2 != null) {
            dVar2.e();
        }
        j.execute(this.f2983f);
        j.execute(this.f2982e);
    }

    public void b() {
        j.execute(this.f2982e);
        j.execute(this.f2983f);
        f.a.i.p.d dVar = this.b;
        if (dVar != null) {
            dVar.c();
        }
        f.a.i.p.d dVar2 = new f.a.i.p.d(this.a, "127.0.0.1", this);
        this.b = dVar2;
        dVar2.start();
    }

    public void c(java.lang.String str) {
        j.execute(this.f2982e);
        j.execute(this.f2983f);
        f.a.i.p.d dVar = this.b;
        if (dVar != null) {
            dVar.c();
        }
        f.a.i.p.d dVar2 = new f.a.i.p.d(this.a, str, this);
        this.b = dVar2;
        dVar2.start();
    }

    public void d() {
        net.easyconn.ecsdk.ECTypes.ECTimeInfo eCTimeInfoQueryTime = net.easyconn.ecsdk.ECSDK.getInstance().queryTime();
        if (eCTimeInfoQueryTime != null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ECTimeInfo ");
            sbO.append(eCTimeInfoQueryTime.toString());
            e.e.a.g.c(sbO.toString(), new java.lang.Object[0]);
            java.util.concurrent.ScheduledExecutorService scheduledExecutorService = j;
            java.lang.String str = new java.text.SimpleDateFormat("yyyyMMdd.HHmmss").format(java.lang.Long.valueOf(eCTimeInfoQueryTime.gmtTime));
            e.e.a.g.c(e.a.c.a.a.e("NetShareManager dateLongToString:", str), new java.lang.Object[0]);
            scheduledExecutorService.execute(new f.a.i.p.e.g(this, str));
        }
    }

    @Override // f.a.i.p.c.a
    public void onStart() {
        e.e.a.g.c("NetShareManager usbStart onStart", new java.lang.Object[0]);
    }
}
