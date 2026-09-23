package com.tencent.bugly.crashreport.crash.jni;

/* loaded from: classes.dex */
public class NativeCrashHandler implements com.tencent.bugly.crashreport.b {
    public static com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler a = null;
    public static int b = 1;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1022c = false;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1023d = false;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f1024e = true;

    /* renamed from: f, reason: collision with root package name */
    public final android.content.Context f1025f;

    /* renamed from: g, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.info.a f1026g;
    public final com.tencent.bugly.proguard.Z h;
    public com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler i;
    public java.lang.String j;
    public final boolean k;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public com.tencent.bugly.crashreport.crash.j p;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws java.lang.Throwable {
            if (!com.tencent.bugly.proguard.ha.a(com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.f1025f, "native_record_lock", 10000L)) {
                com.tencent.bugly.proguard.aa.c("[Native] Failed to lock file for handling native crash record.", new java.lang.Object[0]);
                return;
            }
            if (!com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.f1024e) {
                com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.a(999, "false");
            }
            com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanA = com.tencent.bugly.crashreport.crash.jni.c.a(com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.f1025f, com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.j, com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.i);
            if (crashDetailBeanA != null) {
                com.tencent.bugly.proguard.aa.c("[Native] Get crash from native record.", new java.lang.Object[0]);
                if (!com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.p.c(crashDetailBeanA)) {
                    com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.p.a(crashDetailBeanA, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, false);
                }
                com.tencent.bugly.crashreport.crash.jni.c.a(false, com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.j);
            }
            com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.b();
            com.tencent.bugly.proguard.ha.b(com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.this.f1025f, "native_record_lock");
        }
    }

    @android.annotation.SuppressLint({"SdCardPath"})
    public NativeCrashHandler(android.content.Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.proguard.Z z, boolean z2, java.lang.String str) {
        this.f1025f = com.tencent.bugly.proguard.ha.a(context);
        try {
            if (com.tencent.bugly.proguard.ha.b(str)) {
                str = context.getDir("bugly", 0).getAbsolutePath();
            }
        } catch (java.lang.Throwable unused) {
            str = e.a.c.a.a.f("/data/data/", com.tencent.bugly.crashreport.common.info.a.a(context).f967g, "/app_bugly");
        }
        this.p = jVar;
        this.j = str;
        this.f1026g = aVar;
        this.h = z;
        this.k = z2;
        this.i = new com.tencent.bugly.crashreport.crash.jni.b(context, aVar, jVar, com.tencent.bugly.crashreport.common.strategy.c.b());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(1:4)(11:5|(1:7)|26|9|(1:11)|12|(1:14)|17|(1:19)(1:20)|21|(2:23|28)(2:24|25))|8|26|9|(0)|12|(0)|17|(0)(0)|21|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004a A[Catch: all -> 0x0059, TryCatch #0 {all -> 0x0059, blocks: (B:9:0x0040, B:11:0x004a, B:12:0x004c, B:14:0x0056), top: B:26:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0056 A[Catch: all -> 0x0059, TRY_LEAVE, TryCatch #0 {all -> 0x0059, blocks: (B:9:0x0040, B:11:0x004a, B:12:0x004c, B:14:0x0056), top: B:26:0x0040 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(java.lang.String r6) {
        /*
            r0 = 1
            java.lang.Object[] r1 = new java.lang.Object[r0]
            r2 = 0
            r1[r2] = r6
            java.lang.String r3 = "[Native] Check extra jni for Bugly NDK v%s"
            com.tencent.bugly.proguard.aa.a(r3, r1)
            java.lang.String r1 = "2.1.1"
            java.lang.String r3 = "."
            java.lang.String r4 = ""
            java.lang.String r1 = r1.replace(r3, r4)
            java.lang.String r5 = "2.3.0"
            java.lang.String r5 = r5.replace(r3, r4)
            java.lang.String r6 = r6.replace(r3, r4)
            int r3 = r6.length()
            r4 = 2
            if (r3 != r4) goto L2d
            java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
            java.lang.String r3 = "0"
            goto L39
        L2d:
            int r3 = r6.length()
            if (r3 != r0) goto L40
            java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
            java.lang.String r3 = "00"
        L39:
            r6.append(r3)
            java.lang.String r6 = r6.toString()
        L40:
            int r3 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L59
            int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.Throwable -> L59
            if (r3 < r1) goto L4c
            com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.f1022c = r0     // Catch: java.lang.Throwable -> L59
        L4c:
            int r6 = java.lang.Integer.parseInt(r6)     // Catch: java.lang.Throwable -> L59
            int r1 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.Throwable -> L59
            if (r6 < r1) goto L5a
            com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.f1023d = r0     // Catch: java.lang.Throwable -> L59
            goto L5a
        L59:
        L5a:
            boolean r6 = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.f1023d
            if (r6 == 0) goto L66
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r0 = "[Native] Info setting jni can be accessed."
            com.tencent.bugly.proguard.aa.c(r0, r6)
            goto L6d
        L66:
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r0 = "[Native] Info setting jni can not be accessed."
            com.tencent.bugly.proguard.aa.e(r0, r6)
        L6d:
            boolean r6 = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.f1022c
            if (r6 == 0) goto L79
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r0 = "[Native] Extra jni can be accessed."
            com.tencent.bugly.proguard.aa.c(r0, r6)
            goto L80
        L79:
            java.lang.Object[] r6 = new java.lang.Object[r2]
            java.lang.String r0 = "[Native] Extra jni can not be accessed."
            com.tencent.bugly.proguard.aa.e(r0, r6)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.a(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, java.lang.String str) {
        if (this.m && f1023d) {
            try {
                setNativeInfo(i, str);
                return true;
            } catch (java.lang.UnsatisfiedLinkError unused) {
                f1023d = false;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    private boolean a(java.lang.String str, boolean z) {
        boolean z2;
        try {
            com.tencent.bugly.proguard.aa.c("[Native] Trying to load so: %s", str);
            if (z) {
                java.lang.System.load(str);
            } else {
                java.lang.System.loadLibrary(str);
            }
        } catch (java.lang.Throwable th) {
            th = th;
            z2 = false;
        }
        try {
            com.tencent.bugly.proguard.aa.c("[Native] Successfully loaded SO: %s", str);
            return true;
        } catch (java.lang.Throwable th2) {
            th = th2;
            z2 = true;
            com.tencent.bugly.proguard.aa.e(th.getMessage(), new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.e("[Native] Failed to load so: %s", str);
            return z2;
        }
    }

    private synchronized void c(boolean z) {
        if (this.o != z) {
            com.tencent.bugly.proguard.aa.c("user change native %b", java.lang.Boolean.valueOf(z));
            this.o = z;
        }
    }

    public static synchronized com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler getInstance() {
        return a;
    }

    public static synchronized com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler getInstance(android.content.Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.proguard.Z z, boolean z2, java.lang.String str) {
        if (a == null) {
            a = new com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler(context, aVar, jVar, cVar, z, z2, str);
        }
        return a;
    }

    private native java.lang.String getSoCpuAbi();

    public static boolean isShouldHandleInJava() {
        return f1024e;
    }

    public static void setShouldHandleInJava(boolean z) {
        f1024e = z;
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = a;
        if (nativeCrashHandler != null) {
            nativeCrashHandler.a(999, "" + z);
        }
    }

    public synchronized void a(boolean z) {
        if (this.n) {
            com.tencent.bugly.proguard.aa.e("[Native] Native crash report has already registered.", new java.lang.Object[0]);
            return;
        }
        if (this.m) {
            try {
                java.lang.String strRegist = regist(this.j, z, b);
                if (strRegist != null) {
                    com.tencent.bugly.proguard.aa.c("[Native] Native Crash Report enable.", new java.lang.Object[0]);
                    a(strRegist);
                    this.f1026g.N = strRegist;
                    java.lang.String strConcat = "-".concat(this.f1026g.N);
                    if (!com.tencent.bugly.crashreport.crash.m.b && !this.f1026g.l.contains(strConcat)) {
                        this.f1026g.l = this.f1026g.l.concat("-").concat(this.f1026g.N);
                    }
                    com.tencent.bugly.proguard.aa.c("comInfo.sdkVersion %s", this.f1026g.l);
                    this.n = true;
                    java.lang.String runningCpuAbi = getRunningCpuAbi();
                    if (!android.text.TextUtils.isEmpty(runningCpuAbi)) {
                        this.f1026g.d(runningCpuAbi);
                    }
                    return;
                }
            } catch (java.lang.Throwable unused) {
                com.tencent.bugly.proguard.aa.a("[Native] Failed to load Bugly SO file.", new java.lang.Object[0]);
            }
        } else if (this.l) {
            try {
                java.lang.Class[] clsArr = {java.lang.String.class, java.lang.String.class, java.lang.Integer.TYPE, java.lang.Integer.TYPE};
                java.lang.Object[] objArr = new java.lang.Object[4];
                objArr[0] = this.j;
                objArr[1] = com.tencent.bugly.crashreport.common.info.d.a(this.f1025f, false);
                objArr[2] = java.lang.Integer.valueOf(z ? 1 : 5);
                objArr[3] = 1;
                java.lang.String str = (java.lang.String) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler2", null, clsArr, objArr);
                if (str == null) {
                    str = (java.lang.String) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "registNativeExceptionHandler", null, new java.lang.Class[]{java.lang.String.class, java.lang.String.class, java.lang.Integer.TYPE}, new java.lang.Object[]{this.j, com.tencent.bugly.crashreport.common.info.d.a(this.f1025f, false), java.lang.Integer.valueOf(com.tencent.bugly.crashreport.common.info.a.n().d())});
                }
                if (str != null) {
                    this.n = true;
                    this.f1026g.N = str;
                    java.lang.Boolean bool = (java.lang.Boolean) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "checkExtraJni", null, new java.lang.Class[]{java.lang.String.class}, new java.lang.Object[]{str});
                    if (bool != null) {
                        f1022c = bool.booleanValue();
                    }
                    com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new java.lang.Class[]{java.lang.Boolean.TYPE}, new java.lang.Object[]{java.lang.Boolean.TRUE});
                    com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "setLogMode", null, new java.lang.Class[]{java.lang.Integer.TYPE}, new java.lang.Object[]{java.lang.Integer.valueOf(z ? 1 : 5)});
                    java.lang.String runningCpuAbi2 = getRunningCpuAbi();
                    if (!android.text.TextUtils.isEmpty(runningCpuAbi2)) {
                        this.f1026g.d(runningCpuAbi2);
                    }
                    return;
                }
            } catch (java.lang.Throwable unused2) {
            }
        }
        this.m = false;
        this.l = false;
    }

    @Override // com.tencent.bugly.crashreport.b
    public boolean appendLogToNative(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if ((this.l || this.m) && f1022c && str != null && str2 != null && str3 != null) {
            try {
                if (this.m) {
                    return appendNativeLog(str, str2, str3);
                }
                java.lang.Boolean bool = (java.lang.Boolean) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "appendNativeLog", null, new java.lang.Class[]{java.lang.String.class, java.lang.String.class, java.lang.String.class}, new java.lang.Object[]{str, str2, str3});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (java.lang.UnsatisfiedLinkError unused) {
                f1022c = false;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    public native boolean appendNativeLog(java.lang.String str, java.lang.String str2, java.lang.String str3);

    public native boolean appendWholeNativeLog(java.lang.String str);

    public void b() {
        long jB = com.tencent.bugly.proguard.ha.b() - com.tencent.bugly.crashreport.crash.m.f1033g;
        long jB2 = com.tencent.bugly.proguard.ha.b() + 86400000;
        java.io.File file = new java.io.File(this.j);
        if (file.exists() && file.isDirectory()) {
            try {
                java.io.File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                    int i = 0;
                    int i2 = 0;
                    for (java.io.File file2 : fileArrListFiles) {
                        long jLastModified = file2.lastModified();
                        if (jLastModified < jB || jLastModified >= jB2) {
                            com.tencent.bugly.proguard.aa.c("[Native] Delete record file: %s", file2.getAbsolutePath());
                            i++;
                            if (file2.delete()) {
                                i2++;
                            }
                        }
                    }
                    com.tencent.bugly.proguard.aa.a("[Native] Number of record files overdue: %d, has deleted: %d", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2));
                }
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
            }
        }
    }

    public synchronized void b(boolean z) {
        if (z) {
            startNativeMonitor();
        } else {
            c();
        }
    }

    public synchronized void c() {
        if (!this.n) {
            com.tencent.bugly.proguard.aa.e("[Native] Native crash report has already unregistered.", new java.lang.Object[0]);
            return;
        }
        try {
        } catch (java.lang.Throwable unused) {
            com.tencent.bugly.proguard.aa.a("[Native] Failed to close native crash report.", new java.lang.Object[0]);
        }
        if (unregist() != null) {
            com.tencent.bugly.proguard.aa.c("[Native] Successfully closed native crash report.", new java.lang.Object[0]);
            this.n = false;
            return;
        }
        try {
            com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new java.lang.Class[]{java.lang.Boolean.TYPE}, new java.lang.Object[]{java.lang.Boolean.FALSE});
            this.n = false;
            com.tencent.bugly.proguard.aa.c("[Native] Successfully closed native crash report.", new java.lang.Object[0]);
            return;
        } catch (java.lang.Throwable unused2) {
            com.tencent.bugly.proguard.aa.a("[Native] Failed to close native crash report.", new java.lang.Object[0]);
            this.m = false;
            this.l = false;
            return;
        }
    }

    public void checkUploadRecordCrash() {
        this.h.a(new com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.a());
    }

    public void dumpAnrNativeStack() {
        a(19, "1");
    }

    public void enableCatchAnrTrace() {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i > 31 || i <= 19) {
            return;
        }
        b |= 2;
    }

    public boolean filterSigabrtSysLog() {
        return a(998, "true");
    }

    public synchronized java.lang.String getDumpFilePath() {
        return this.j;
    }

    @Override // com.tencent.bugly.crashreport.b
    public java.lang.String getLogFromNative() {
        if ((!this.l && !this.m) || !f1022c) {
            return null;
        }
        try {
            return this.m ? getNativeLog() : (java.lang.String) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "getNativeLog", null, null, null);
        } catch (java.lang.UnsatisfiedLinkError unused) {
            f1022c = false;
            return null;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler getNativeExceptionHandler() {
        return this.i;
    }

    public native java.lang.String getNativeKeyValueList();

    public native java.lang.String getNativeLog();

    public java.lang.String getRunningCpuAbi() {
        try {
            return getSoCpuAbi();
        } catch (java.lang.Throwable unused) {
            com.tencent.bugly.proguard.aa.e("get so cpu abi failed，please upgrade bugly so version", new java.lang.Object[0]);
            return "";
        }
    }

    public boolean isEnableCatchAnrTrace() {
        return (b & 2) == 2;
    }

    public synchronized boolean isUserOpened() {
        return this.o;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002f A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x000b, B:8:0x0018, B:10:0x0024, B:14:0x002b, B:16:0x002f), top: B:22:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void onStrategyChanged(com.tencent.bugly.crashreport.common.strategy.StrategyBean r4) {
        /*
            r3 = this;
            monitor-enter(r3)
            r0 = 0
            r1 = 1
            if (r4 == 0) goto L18
            boolean r4 = r4.f972f     // Catch: java.lang.Throwable -> L41
            boolean r2 = r3.n     // Catch: java.lang.Throwable -> L41
            if (r4 == r2) goto L18
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L41
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L41
            r2[r0] = r4     // Catch: java.lang.Throwable -> L41
            java.lang.String r4 = "server native changed to %b"
            com.tencent.bugly.proguard.aa.e(r4, r2)     // Catch: java.lang.Throwable -> L41
        L18:
            com.tencent.bugly.crashreport.common.strategy.c r4 = com.tencent.bugly.crashreport.common.strategy.c.b()     // Catch: java.lang.Throwable -> L41
            com.tencent.bugly.crashreport.common.strategy.StrategyBean r4 = r4.c()     // Catch: java.lang.Throwable -> L41
            boolean r4 = r4.f972f     // Catch: java.lang.Throwable -> L41
            if (r4 == 0) goto L2a
            boolean r4 = r3.o     // Catch: java.lang.Throwable -> L41
            if (r4 == 0) goto L2a
            r4 = 1
            goto L2b
        L2a:
            r4 = 0
        L2b:
            boolean r2 = r3.n     // Catch: java.lang.Throwable -> L41
            if (r4 == r2) goto L3f
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L41
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r4)     // Catch: java.lang.Throwable -> L41
            r1[r0] = r2     // Catch: java.lang.Throwable -> L41
            java.lang.String r0 = "native changed to %b"
            com.tencent.bugly.proguard.aa.c(r0, r1)     // Catch: java.lang.Throwable -> L41
            r3.b(r4)     // Catch: java.lang.Throwable -> L41
        L3f:
            monitor-exit(r3)
            return
        L41:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.onStrategyChanged(com.tencent.bugly.crashreport.common.strategy.StrategyBean):void");
    }

    public boolean putKeyValueToNative(java.lang.String str, java.lang.String str2) {
        if ((this.l || this.m) && f1022c && str != null && str2 != null) {
            try {
                if (this.m) {
                    return putNativeKeyValue(str, str2);
                }
                java.lang.Boolean bool = (java.lang.Boolean) com.tencent.bugly.proguard.ha.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "putNativeKeyValue", null, new java.lang.Class[]{java.lang.String.class, java.lang.String.class}, new java.lang.Object[]{str, str2});
                if (bool != null) {
                    return bool.booleanValue();
                }
                return false;
            } catch (java.lang.UnsatisfiedLinkError unused) {
                f1022c = false;
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                return false;
            }
        }
        return false;
    }

    public native boolean putNativeKeyValue(java.lang.String str, java.lang.String str2);

    public native java.lang.String regist(java.lang.String str, boolean z, int i);

    public void removeEmptyNativeRecordFiles() {
        com.tencent.bugly.crashreport.crash.jni.c.b(this.j);
    }

    public native java.lang.String removeNativeKeyValue(java.lang.String str);

    public void resendSigquit() {
        a(20, "");
    }

    public synchronized void setDumpFilePath(java.lang.String str) {
        this.j = str;
    }

    public boolean setNativeAppChannel(java.lang.String str) {
        return a(12, str);
    }

    public boolean setNativeAppPackage(java.lang.String str) {
        return a(13, str);
    }

    public boolean setNativeAppVersion(java.lang.String str) {
        return a(10, str);
    }

    public native void setNativeInfo(int i, java.lang.String str);

    @Override // com.tencent.bugly.crashreport.b
    public boolean setNativeIsAppForeground(boolean z) {
        return a(14, z ? "true" : "false");
    }

    public boolean setNativeLaunchTime(long j) {
        try {
            return a(15, java.lang.String.valueOf(j));
        } catch (java.lang.NumberFormatException e2) {
            if (com.tencent.bugly.proguard.aa.b(e2)) {
                return false;
            }
            e2.printStackTrace();
            return false;
        }
    }

    public boolean setNativeUserId(java.lang.String str) {
        return a(11, str);
    }

    public synchronized void setUserOpened(boolean z) {
        c(z);
        boolean zIsUserOpened = isUserOpened();
        com.tencent.bugly.crashreport.common.strategy.c cVarB = com.tencent.bugly.crashreport.common.strategy.c.b();
        if (cVarB != null) {
            zIsUserOpened = zIsUserOpened && cVarB.c().f972f;
        }
        if (zIsUserOpened != this.n) {
            com.tencent.bugly.proguard.aa.c("native changed to %b", java.lang.Boolean.valueOf(zIsUserOpened));
            b(zIsUserOpened);
        }
    }

    public synchronized void startNativeMonitor() {
        if (!this.m && !this.l) {
            boolean z = !com.tencent.bugly.proguard.ha.b(this.f1026g.M);
            if (com.tencent.bugly.crashreport.crash.m.b) {
                boolean zA = a(z ? this.f1026g.M : "Bugly-rqd", z);
                this.m = zA;
                if (!zA && !z) {
                    this.l = a("NativeRQD", false);
                }
            } else {
                java.lang.String str = "Bugly-ext";
                com.tencent.bugly.crashreport.common.info.a aVar = this.f1026g;
                java.lang.String str2 = aVar.M;
                if (z) {
                    str = str2;
                } else {
                    aVar.getClass();
                }
                this.m = a(str, z);
            }
            if (this.m || this.l) {
                a(this.k);
                if (f1022c) {
                    setNativeAppVersion(this.f1026g.F);
                    setNativeAppChannel(this.f1026g.J);
                    setNativeAppPackage(this.f1026g.f967g);
                    setNativeUserId(this.f1026g.A());
                    setNativeIsAppForeground(this.f1026g.E());
                    setNativeLaunchTime(this.f1026g.f965e);
                }
                return;
            }
            return;
        }
        a(this.k);
    }

    public native void testCrash();

    public void testNativeCrash() {
        if (this.m) {
            testCrash();
        } else {
            com.tencent.bugly.proguard.aa.e("[Native] Bugly SO file has not been load.", new java.lang.Object[0]);
        }
    }

    public void testNativeCrash(boolean z, boolean z2, boolean z3) {
        a(16, "" + z);
        a(17, "" + z2);
        a(18, "" + z3);
        testNativeCrash();
    }

    public native java.lang.String unregist();
}
