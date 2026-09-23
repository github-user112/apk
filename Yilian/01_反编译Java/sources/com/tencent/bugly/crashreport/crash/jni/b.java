package com.tencent.bugly.crashreport.crash.jni;

/* loaded from: classes.dex */
public class b implements com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler {
    public final android.content.Context a;
    public final com.tencent.bugly.crashreport.crash.j b;

    /* renamed from: c, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.info.a f1027c;

    /* renamed from: d, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.strategy.c f1028d;

    public b(android.content.Context context, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.crashreport.common.strategy.c cVar) {
        this.a = context;
        this.b = jVar;
        this.f1027c = aVar;
        this.f1028d = cVar;
    }

    public static java.lang.String a(int i, int i2) {
        if (i > 0) {
            return "UNKNOWN";
        }
        java.lang.String strA = i2 > 0 ? com.tencent.bugly.crashreport.common.info.AppInfo.a(i2) : "UNKNOWN";
        if (strA.equals(java.lang.String.valueOf(i2))) {
            return strA;
        }
        return strA + "(" + i2 + ")";
    }

    public static java.lang.String a(int i, java.lang.String str) {
        return i > 0 ? "KERNEL" : str;
    }

    public static java.lang.String a(java.lang.String str, int i, java.lang.String str2) {
        return i > 0 ? e.a.c.a.a.g(str, "(", str2, ")") : str;
    }

    public static java.lang.String a(java.util.Map<java.lang.String, java.lang.String> map, int i) {
        java.lang.StringBuilder sb;
        java.lang.String name = map.get("ExceptionThreadName");
        com.tencent.bugly.proguard.aa.a("crash thread name:%s tid:%s", name, java.lang.Integer.valueOf(i));
        if (android.text.TextUtils.isEmpty(name)) {
            java.lang.Thread threadCurrentThread = java.lang.Thread.currentThread();
            sb = new java.lang.StringBuilder();
            name = threadCurrentThread.getName();
        } else {
            sb = new java.lang.StringBuilder();
        }
        sb.append(name);
        sb.append("(");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }

    public static java.lang.String a(java.util.Map<java.lang.String, java.lang.String> map, com.tencent.bugly.crashreport.common.info.a aVar) {
        java.lang.String str = map.get("ExceptionProcessName");
        if (str == null || str.length() == 0) {
            return aVar.h;
        }
        com.tencent.bugly.proguard.aa.a("Name of crash process: %s", str);
        return str;
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(java.lang.String[] strArr) {
        java.util.HashMap map = new java.util.HashMap(strArr == null ? 1 : strArr.length);
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                java.lang.String str = strArr[i];
                if (str != null) {
                    com.tencent.bugly.proguard.aa.c("Extra message[%d]: %s", java.lang.Integer.valueOf(i), str);
                    java.lang.String[] strArrSplit = str.split("=");
                    if (strArrSplit.length == 2) {
                        map.put(strArrSplit[0], strArrSplit[1]);
                    } else {
                        com.tencent.bugly.proguard.aa.e("bad extraMsg %s", str);
                    }
                }
            }
        } else {
            com.tencent.bugly.proguard.aa.a("not found extraMsg", new java.lang.Object[0]);
        }
        return map;
    }

    private void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, int i) {
        com.tencent.bugly.crashreport.crash.j jVar = this.b;
        if (jVar == null) {
            com.tencent.bugly.proguard.aa.e("crashHandler is null. Won't upload native crash.", new java.lang.Object[0]);
            return;
        }
        boolean z = !jVar.a(crashDetailBean, i);
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
        com.tencent.bugly.crashreport.crash.jni.c.a(true, nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null);
        if (z) {
            this.b.a(crashDetailBean, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, true);
        }
        this.b.e(crashDetailBean);
        com.tencent.bugly.crashreport.crash.m.g().d();
    }

    public static boolean a(java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str = map.get("HasPendingException");
        if (str == null || !str.equals("true")) {
            return false;
        }
        com.tencent.bugly.proguard.aa.c("Native crash happened with a Java pending exception.", new java.lang.Object[0]);
        return true;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public boolean getAndUpdateAnrState() {
        if (com.tencent.bugly.crashreport.crash.anr.g.b() == null) {
            return false;
        }
        return com.tencent.bugly.crashreport.crash.anr.g.b().a();
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public void handleNativeException(int i, int i2, long j, long j2, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i3, java.lang.String str5, int i4, int i5, int i6, java.lang.String str6, java.lang.String str7) {
        com.tencent.bugly.proguard.aa.c("Native Crash Happen v1", new java.lang.Object[0]);
        handleNativeException2(i, i2, j, j2, str, str2, str3, str4, i3, str5, i4, i5, i6, str6, str7, null);
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public void handleNativeException2(int i, int i2, long j, long j2, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, int i3, java.lang.String str5, int i4, int i5, int i6, java.lang.String str6, java.lang.String str7, java.lang.String[] strArr) {
        com.tencent.bugly.proguard.aa.c("Native Crash Happen v2", new java.lang.Object[0]);
        try {
            java.lang.String strA = a(str, i3, str5);
            java.lang.String strA2 = com.tencent.bugly.crashreport.crash.jni.c.a(str3);
            java.util.Map<java.lang.String, java.lang.String> mapA = a(strArr);
            boolean zA = a(mapA);
            java.lang.String strA3 = a(mapA, this.f1027c);
            java.lang.String strA4 = a(mapA, i2);
            long j3 = (j * 1000) + (j2 / 1000);
            java.lang.String str8 = mapA.get("SysLogPath");
            java.lang.String str9 = mapA.get("JniLogPath");
            if (!this.f1028d.d()) {
                com.tencent.bugly.proguard.aa.e("no remote but still store!", new java.lang.Object[0]);
            }
            if (!this.f1028d.c().f972f && this.f1028d.d()) {
                com.tencent.bugly.proguard.aa.b("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new java.lang.Object[0]);
                com.tencent.bugly.crashreport.crash.j.a("NATIVE_CRASH", com.tencent.bugly.proguard.ha.a(), strA3, strA4, strA + "\n" + str2 + "\n" + strA2, (com.tencent.bugly.crashreport.crash.CrashDetailBean) null);
                com.tencent.bugly.proguard.ha.a(str4);
                return;
            }
            try {
                com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanPackageCrashDatas = packageCrashDatas(strA3, strA4, j3, strA, str2, strA2, a(i3, str5), a(i3, i4), str4, str8, str9, str7, null, null, true, zA);
                if (crashDetailBeanPackageCrashDatas == null) {
                    com.tencent.bugly.proguard.aa.b("pkg crash datas fail!", new java.lang.Object[0]);
                    return;
                }
                com.tencent.bugly.crashreport.crash.j.a("NATIVE_CRASH", com.tencent.bugly.proguard.ha.a(), strA3, strA4, strA + "\n" + str2 + "\n" + strA2, crashDetailBeanPackageCrashDatas);
                try {
                    a(crashDetailBeanPackageCrashDatas, i3);
                } catch (java.lang.Throwable th) {
                    th = th;
                    if (com.tencent.bugly.proguard.aa.b(th)) {
                        return;
                    }
                    th.printStackTrace();
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
        }
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public com.tencent.bugly.crashreport.crash.CrashDetailBean packageCrashDatas(java.lang.String str, java.lang.String str2, long j, java.lang.String str3, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7, java.lang.String str8, java.lang.String str9, java.lang.String str10, java.lang.String str11, byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map, boolean z, boolean z2) throws java.io.IOException {
        int i;
        java.lang.String str12;
        int iIndexOf;
        boolean zI = com.tencent.bugly.crashreport.crash.m.g().i();
        if (zI) {
            com.tencent.bugly.proguard.aa.b("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new java.lang.Object[0]);
        }
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean = new com.tencent.bugly.crashreport.crash.CrashDetailBean();
        crashDetailBean.b = 1;
        crashDetailBean.f984e = this.f1027c.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f1027c;
        crashDetailBean.f985f = aVar.F;
        crashDetailBean.f986g = aVar.i();
        crashDetailBean.m = this.f1027c.A();
        crashDetailBean.n = str3;
        crashDetailBean.o = zI ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.p = str4;
        java.lang.String str13 = str5 != null ? str5 : "";
        crashDetailBean.q = str13;
        crashDetailBean.r = j;
        crashDetailBean.u = com.tencent.bugly.proguard.ha.c(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.f1027c.s();
        crashDetailBean.h = this.f1027c.q();
        crashDetailBean.i = this.f1027c.p();
        crashDetailBean.v = str8;
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
        java.lang.String dumpFilePath = nativeCrashHandler != null ? nativeCrashHandler.getDumpFilePath() : null;
        java.lang.String strA = com.tencent.bugly.crashreport.crash.jni.c.a(dumpFilePath, str8);
        if (!com.tencent.bugly.proguard.ha.b(strA)) {
            crashDetailBean.Z = strA;
        }
        crashDetailBean.aa = com.tencent.bugly.crashreport.crash.jni.c.c(dumpFilePath);
        crashDetailBean.w = com.tencent.bugly.crashreport.crash.jni.c.a(str9, com.tencent.bugly.crashreport.crash.m.f1031e, com.tencent.bugly.crashreport.crash.m.h, com.tencent.bugly.crashreport.crash.m.m);
        crashDetailBean.x = com.tencent.bugly.crashreport.crash.jni.c.a(str10, com.tencent.bugly.crashreport.crash.m.f1031e, null, true);
        crashDetailBean.N = str7;
        crashDetailBean.O = str6;
        crashDetailBean.P = str11;
        crashDetailBean.F = this.f1027c.x();
        crashDetailBean.G = this.f1027c.y();
        crashDetailBean.H = this.f1027c.z();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.d.g();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.d.n();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.d.f();
        if (z) {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.d.h();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.d.j();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.d.e();
            if (crashDetailBean.w == null) {
                crashDetailBean.w = com.tencent.bugly.proguard.ha.a(this.a, com.tencent.bugly.crashreport.crash.m.f1031e, com.tencent.bugly.crashreport.crash.m.h);
            }
            crashDetailBean.y = com.tencent.bugly.proguard.ga.b();
            com.tencent.bugly.crashreport.common.info.a aVar2 = this.f1027c;
            crashDetailBean.Q = aVar2.f965e;
            crashDetailBean.R = aVar2.E();
            crashDetailBean.z = com.tencent.bugly.proguard.ha.a(this.f1027c.G(), com.tencent.bugly.crashreport.crash.m.f1032f, false);
            int iIndexOf2 = crashDetailBean.q.indexOf("java:\n");
            if (iIndexOf2 > 0 && (i = iIndexOf2 + 6) < crashDetailBean.q.length()) {
                java.lang.String str14 = crashDetailBean.q;
                java.lang.String strSubstring = str14.substring(i, str14.length() - 1);
                if (strSubstring.length() > 0 && crashDetailBean.z.containsKey(crashDetailBean.B) && (iIndexOf = (str12 = crashDetailBean.z.get(crashDetailBean.B)).indexOf(strSubstring)) > 0) {
                    java.lang.String strSubstring2 = str12.substring(iIndexOf);
                    crashDetailBean.z.put(crashDetailBean.B, strSubstring2);
                    crashDetailBean.q = crashDetailBean.q.substring(0, i);
                    crashDetailBean.q = e.a.c.a.a.j(new java.lang.StringBuilder(), crashDetailBean.q, strSubstring2);
                }
            }
            if (str == null) {
                crashDetailBean.A = this.f1027c.h;
            }
            this.b.d(crashDetailBean);
            crashDetailBean.U = this.f1027c.C();
            crashDetailBean.V = this.f1027c.v();
            crashDetailBean.W = this.f1027c.h();
            crashDetailBean.X = this.f1027c.g();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.w == null) {
                crashDetailBean.w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.Q = -1L;
            crashDetailBean.U = -1;
            crashDetailBean.V = -1;
            crashDetailBean.W = map;
            crashDetailBean.X = this.f1027c.g();
            crashDetailBean.z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.y = bArr;
            }
        }
        return crashDetailBean;
    }
}
