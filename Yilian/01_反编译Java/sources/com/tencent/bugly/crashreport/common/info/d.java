package com.tencent.bugly.crashreport.common.info;

/* loaded from: classes.dex */
public class d {
    public static final java.util.ArrayList<com.tencent.bugly.crashreport.common.info.d.c> a = new com.tencent.bugly.crashreport.common.info.d.a();
    public static final java.util.Map<java.lang.Integer, java.lang.String> b = new com.tencent.bugly.crashreport.common.info.d.b();

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String[] f968c = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", "/system/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    public static class a extends java.util.ArrayList<com.tencent.bugly.crashreport.common.info.d.c> {
        public a() {
            add(new com.tencent.bugly.crashreport.common.info.d.n(null));
            add(new com.tencent.bugly.crashreport.common.info.d.h(null));
            add(new com.tencent.bugly.crashreport.common.info.d.i(null));
            add(new com.tencent.bugly.crashreport.common.info.d.o(null));
            add(new com.tencent.bugly.crashreport.common.info.d.j(null));
            add(new com.tencent.bugly.crashreport.common.info.d.k(null));
            add(new com.tencent.bugly.crashreport.common.info.d.m(null));
            add(new com.tencent.bugly.crashreport.common.info.d.g(null));
            add(new com.tencent.bugly.crashreport.common.info.d.l(null));
            add(new com.tencent.bugly.crashreport.common.info.d.C0008d(null));
            add(new com.tencent.bugly.crashreport.common.info.d.f(null));
            add(new com.tencent.bugly.crashreport.common.info.d.e(null));
        }
    }

    public static class b extends java.util.HashMap<java.lang.Integer, java.lang.String> {
        public b() {
            put(1, "GPRS");
            put(2, "EDGE");
            put(3, "UMTS");
            put(8, "HSDPA");
            put(9, "HSUPA");
            put(10, "HSPA");
            put(4, "CDMA");
            put(5, "EVDO_0");
            put(6, "EVDO_A");
            put(7, "1xRTT");
            put(11, "iDen");
            put(12, "EVDO_B");
            put(13, "LTE");
            put(14, "eHRPD");
            put(15, "HSPA+");
        }
    }

    public static abstract class c {
        public c() {
        }

        public c(com.tencent.bugly.crashreport.common.info.d.a aVar) {
        }

        public abstract java.lang.String a(android.content.Context context);
    }

    /* renamed from: com.tencent.bugly.crashreport.common.info.d$d, reason: collision with other inner class name */
    public static class C0008d extends com.tencent.bugly.crashreport.common.info.d.c {
        public C0008d(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.gn.gnromvernumber");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            java.lang.StringBuilder sbR = e.a.c.a.a.r("amigo/", strA, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
            sbR.append(com.tencent.bugly.proguard.ha.a(context, "ro.build.display.id"));
            return sbR.toString();
        }
    }

    public static class e extends com.tencent.bugly.crashreport.common.info.d.c {
        public e(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) {
            return com.tencent.bugly.proguard.ha.a(context, "ro.build.fingerprint") + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + com.tencent.bugly.proguard.ha.a(context, "ro.build.rom.id");
        }
    }

    public static class f extends com.tencent.bugly.crashreport.common.info.d.c {
        public f(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.build.tyd.kbstyle_version");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("dido/", strA);
        }
    }

    public static class g extends com.tencent.bugly.crashreport.common.info.d.c {
        public g(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.aa.romver");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            java.lang.StringBuilder sbR = e.a.c.a.a.r("htc/", strA, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
            sbR.append(com.tencent.bugly.proguard.ha.a(context, "ro.build.description"));
            return sbR.toString();
        }
    }

    public static class h extends com.tencent.bugly.crashreport.common.info.d.c {
        public h(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.build.version.emui");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("HuaWei/EMOTION/", strA);
        }
    }

    public static class i extends com.tencent.bugly.crashreport.common.info.d.c {
        public i(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.lenovo.series");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("Lenovo/VIBE/", com.tencent.bugly.proguard.ha.a(context, "ro.build.version.incremental"));
        }
    }

    public static class j extends com.tencent.bugly.crashreport.common.info.d.c {
        public j(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.meizu.product.model");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Meizu/FLYME/");
            sbO.append(com.tencent.bugly.proguard.ha.a(context, "ro.build.display.id"));
            return sbO.toString();
        }
    }

    public static class k extends com.tencent.bugly.crashreport.common.info.d.c {
        public k(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.build.version.opporom");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("Oppo/COLOROS/", strA);
        }
    }

    public static class l extends com.tencent.bugly.crashreport.common.info.d.c {
        public l(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.lewa.version");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            java.lang.StringBuilder sbR = e.a.c.a.a.r("tcl/", strA, com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR);
            sbR.append(com.tencent.bugly.proguard.ha.a(context, "ro.build.display.id"));
            return sbR.toString();
        }
    }

    public static class m extends com.tencent.bugly.crashreport.common.info.d.c {
        public m(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.vivo.os.build.display.id");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("vivo/FUNTOUCH/", strA);
        }
    }

    public static class n extends com.tencent.bugly.crashreport.common.info.d.c {
        public n(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.miui.ui.version.name");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            return e.a.c.a.a.e("XiaoMi/MIUI/", strA);
        }
    }

    public static class o extends com.tencent.bugly.crashreport.common.info.d.c {
        public o(com.tencent.bugly.crashreport.common.info.d.a aVar) {
            super(null);
        }

        @Override // com.tencent.bugly.crashreport.common.info.d.c
        public java.lang.String a(android.content.Context context) throws java.io.IOException {
            java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.build.nubia.rom.name");
            if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                return null;
            }
            java.lang.StringBuilder sbR = e.a.c.a.a.r("Zte/NUBIA/", strA, "_");
            sbR.append(com.tencent.bugly.proguard.ha.a(context, "ro.build.nubia.rom.code"));
            return sbR.toString();
        }
    }

    public static java.lang.String a(android.content.Context context) {
        if (context != null && context.getApplicationInfo() != null) {
            java.lang.String str = context.getApplicationInfo().nativeLibraryDir;
            if (android.text.TextUtils.isEmpty(str)) {
                return "fail";
            }
            if (str.endsWith("arm")) {
                return "armeabi-v7a";
            }
            if (str.endsWith("arm64")) {
                return "arm64-v8a";
            }
            if (str.endsWith("x86")) {
                return "x86";
            }
            if (str.endsWith("x86_64")) {
                return "x86_64";
            }
        }
        return "fail";
    }

    public static java.lang.String a(android.content.Context context, boolean z) {
        java.lang.String property = null;
        if (z) {
            try {
                java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.product.cpu.abilist");
                if (com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) {
                    strA = com.tencent.bugly.proguard.ha.a(context, "ro.product.cpu.abi");
                }
                if (!com.tencent.bugly.proguard.ha.b(strA) && !strA.equals("fail")) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("ABI list: ");
                    sb.append(strA);
                    com.tencent.bugly.proguard.aa.a(com.tencent.bugly.crashreport.common.info.d.class, sb.toString(), new java.lang.Object[0]);
                    property = strA.split(",")[0];
                }
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                return "fail";
            }
        }
        if (property == null) {
            property = java.lang.System.getProperty("os.arch");
        }
        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
        sb2.append("");
        sb2.append(property);
        return sb2.toString();
    }

    public static boolean a() {
        try {
            return android.os.Environment.getExternalStorageState().equals("mounted");
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public static int b() {
        try {
            return android.os.Build.VERSION.SDK_INT;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return -1;
            }
            th.printStackTrace();
            return -1;
        }
    }

    public static java.lang.String b(android.content.Context context) {
        android.telephony.TelephonyManager telephonyManager;
        java.lang.String str = "unknown";
        try {
            android.net.NetworkInfo activeNetworkInfo = ((android.net.ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() != 0 || (telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone")) == null) {
                return "unknown";
            }
            int networkType = telephonyManager.getNetworkType();
            java.lang.String str2 = b.get(java.lang.Integer.valueOf(networkType));
            if (str2 != null) {
                return str2;
            }
            try {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("MOBILE(");
                sb.append(networkType);
                sb.append(")");
                return sb.toString();
            } catch (java.lang.Exception e2) {
                e = e2;
                str = str2;
                if (com.tencent.bugly.proguard.aa.b(e)) {
                    return str;
                }
                e.printStackTrace();
                return str;
            }
        } catch (java.lang.Exception e3) {
            e = e3;
        }
    }

    public static java.lang.String c() {
        return "";
    }

    public static java.lang.String c(android.content.Context context) {
        java.util.Iterator<com.tencent.bugly.crashreport.common.info.d.c> it = a.iterator();
        while (it.hasNext()) {
            java.lang.String strA = it.next().a(context);
            if (!android.text.TextUtils.isEmpty(strA)) {
                return strA;
            }
        }
        return null;
    }

    public static java.lang.String d() {
        try {
            return android.os.Build.MODEL;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static boolean d(android.content.Context context) throws java.io.IOException {
        java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.build.version.opporom");
        return !android.text.TextUtils.isEmpty((com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) ? null : e.a.c.a.a.e("Oppo/COLOROS/", strA));
    }

    public static long e() {
        if (!a()) {
            return 0L;
        }
        try {
            android.os.StatFs statFs = new android.os.StatFs(android.os.Environment.getExternalStorageDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static boolean e(android.content.Context context) throws java.io.IOException {
        java.lang.String strA = com.tencent.bugly.proguard.ha.a(context, "ro.vivo.os.build.display.id");
        return !android.text.TextUtils.isEmpty((com.tencent.bugly.proguard.ha.b(strA) || strA.equals("fail")) ? null : e.a.c.a.a.e("vivo/FUNTOUCH/", strA));
    }

    public static long f() {
        return java.lang.Runtime.getRuntime().totalMemory() - java.lang.Runtime.getRuntime().freeMemory();
    }

    public static boolean f(android.content.Context context) {
        double dMaxMemory = java.lang.Runtime.getRuntime().maxMemory();
        java.lang.Double.isNaN(dMaxMemory);
        float f2 = (float) ((dMaxMemory * 1.0d) / 1048576.0d);
        double d2 = java.lang.Runtime.getRuntime().totalMemory();
        java.lang.Double.isNaN(d2);
        float f3 = (float) ((d2 * 1.0d) / 1048576.0d);
        float f4 = f2 - f3;
        com.tencent.bugly.proguard.aa.a("maxMemory : %f", java.lang.Float.valueOf(f2));
        com.tencent.bugly.proguard.aa.a("totalMemory : %f", java.lang.Float.valueOf(f3));
        com.tencent.bugly.proguard.aa.a("freeMemory : %f", java.lang.Float.valueOf(f4));
        return f4 < 10.0f;
    }

    public static long g() {
        return android.os.Debug.getPss() * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
    }

    public static long h() throws java.io.IOException {
        java.io.FileReader fileReader;
        java.io.BufferedReader bufferedReader = null;
        try {
            fileReader = new java.io.FileReader("/proc/meminfo");
            try {
                java.io.BufferedReader bufferedReader2 = new java.io.BufferedReader(fileReader, 2048);
                try {
                    bufferedReader2.readLine();
                    java.lang.String line = bufferedReader2.readLine();
                    if (line == null) {
                        try {
                            bufferedReader2.close();
                        } catch (java.io.IOException e2) {
                            if (!com.tencent.bugly.proguard.aa.b(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (java.io.IOException e3) {
                            if (!com.tencent.bugly.proguard.aa.b(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j2 = (java.lang.Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + 0;
                    java.lang.String line2 = bufferedReader2.readLine();
                    if (line2 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (java.io.IOException e4) {
                            if (!com.tencent.bugly.proguard.aa.b(e4)) {
                                e4.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (java.io.IOException e5) {
                            if (!com.tencent.bugly.proguard.aa.b(e5)) {
                                e5.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j3 = java.lang.Long.parseLong(line2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim());
                    java.lang.Long.signum(j3);
                    long j4 = (j3 * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + j2;
                    java.lang.String line3 = bufferedReader2.readLine();
                    if (line3 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (java.io.IOException e6) {
                            if (!com.tencent.bugly.proguard.aa.b(e6)) {
                                e6.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (java.io.IOException e7) {
                            if (!com.tencent.bugly.proguard.aa.b(e7)) {
                                e7.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j5 = (java.lang.Long.parseLong(line3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) + j4;
                    try {
                        bufferedReader2.close();
                    } catch (java.io.IOException e8) {
                        if (!com.tencent.bugly.proguard.aa.b(e8)) {
                            e8.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (java.io.IOException e9) {
                        if (!com.tencent.bugly.proguard.aa.b(e9)) {
                            e9.printStackTrace();
                        }
                    }
                    return j5;
                } catch (java.lang.Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.io.IOException e10) {
                                if (!com.tencent.bugly.proguard.aa.b(e10)) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            fileReader.close();
                            return -2L;
                        } catch (java.io.IOException e11) {
                            if (com.tencent.bugly.proguard.aa.b(e11)) {
                                return -2L;
                            }
                            e11.printStackTrace();
                            return -2L;
                        }
                    } catch (java.lang.Throwable th2) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.io.IOException e12) {
                                if (!com.tencent.bugly.proguard.aa.b(e12)) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (java.io.IOException e13) {
                                if (!com.tencent.bugly.proguard.aa.b(e13)) {
                                    e13.printStackTrace();
                                }
                            }
                        }
                        throw th2;
                    }
                }
            } catch (java.lang.Throwable th3) {
                th = th3;
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            fileReader = null;
        }
    }

    public static long i() throws java.io.IOException {
        java.io.FileReader fileReader;
        java.lang.Throwable th;
        java.io.BufferedReader bufferedReader;
        try {
            fileReader = new java.io.FileReader("/proc/meminfo");
            try {
                bufferedReader = new java.io.BufferedReader(fileReader, 2048);
                try {
                    java.lang.String line = bufferedReader.readLine();
                    if (line == null) {
                        try {
                            bufferedReader.close();
                        } catch (java.io.IOException e2) {
                            if (!com.tencent.bugly.proguard.aa.b(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (java.io.IOException e3) {
                            if (!com.tencent.bugly.proguard.aa.b(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j2 = java.lang.Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) * android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
                    try {
                        bufferedReader.close();
                    } catch (java.io.IOException e4) {
                        if (!com.tencent.bugly.proguard.aa.b(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (java.io.IOException e5) {
                        if (!com.tencent.bugly.proguard.aa.b(e5)) {
                            e5.printStackTrace();
                        }
                    }
                    return j2;
                } catch (java.lang.Throwable th2) {
                    th = th2;
                    try {
                        if (!com.tencent.bugly.proguard.aa.b(th)) {
                            th.printStackTrace();
                        }
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.io.IOException e6) {
                                if (!com.tencent.bugly.proguard.aa.b(e6)) {
                                    e6.printStackTrace();
                                }
                            }
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            fileReader.close();
                            return -2L;
                        } catch (java.io.IOException e7) {
                            if (com.tencent.bugly.proguard.aa.b(e7)) {
                                return -2L;
                            }
                            e7.printStackTrace();
                            return -2L;
                        }
                    } catch (java.lang.Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (java.io.IOException e8) {
                                if (!com.tencent.bugly.proguard.aa.b(e8)) {
                                    e8.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (java.io.IOException e9) {
                                if (!com.tencent.bugly.proguard.aa.b(e9)) {
                                    e9.printStackTrace();
                                }
                            }
                        }
                        throw th3;
                    }
                }
            } catch (java.lang.Throwable th4) {
                th = th4;
                bufferedReader = null;
            }
        } catch (java.lang.Throwable th5) {
            fileReader = null;
            th = th5;
            bufferedReader = null;
        }
    }

    public static long j() {
        try {
            android.os.StatFs statFs = new android.os.StatFs(android.os.Environment.getDataDirectory().getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    public static long k() {
        try {
            android.os.StatFs statFs = new android.os.StatFs(android.os.Environment.getDataDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    public static long l() {
        if (!a()) {
            return 0L;
        }
        try {
            android.os.StatFs statFs = new android.os.StatFs(android.os.Environment.getExternalStorageDirectory().getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static java.lang.String m() {
        try {
            return android.os.Build.VERSION.RELEASE;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        r0 = java.lang.Long.parseLong(r3.replaceAll("[^\\d]", ""));
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x002d -> B:43:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long n() {
        /*
            r0 = 0
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L33
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L33
            java.lang.String r4 = "/proc/self/status"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L33
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L33
        Le:
            java.lang.String r3 = r2.readLine()     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L28
            java.lang.String r4 = "VmSize"
            boolean r4 = r3.startsWith(r4)     // Catch: java.lang.Throwable -> L31
            if (r4 == 0) goto Le
            java.lang.String r4 = "[^\\d]"
            java.lang.String r5 = ""
            java.lang.String r3 = r3.replaceAll(r4, r5)     // Catch: java.lang.Throwable -> L31
            long r0 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Throwable -> L31
        L28:
            r2.close()     // Catch: java.lang.Throwable -> L2c
            goto L3e
        L2c:
            r2 = move-exception
            r2.printStackTrace()
            goto L3e
        L31:
            r3 = move-exception
            goto L36
        L33:
            r2 = move-exception
            r3 = r2
            r2 = 0
        L36:
            com.tencent.bugly.proguard.aa.b(r3)     // Catch: java.lang.Throwable -> L43
            if (r2 == 0) goto L3e
            r2.close()     // Catch: java.lang.Throwable -> L2c
        L3e:
            r2 = 1024(0x400, double:5.06E-321)
            long r0 = r0 * r2
            return r0
        L43:
            r0 = move-exception
            if (r2 == 0) goto L4e
            r2.close()     // Catch: java.lang.Throwable -> L4a
            goto L4e
        L4a:
            r1 = move-exception
            r1.printStackTrace()
        L4e:
            goto L50
        L4f:
            throw r0
        L50:
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.common.info.d.n():long");
    }

    public static boolean o() {
        boolean z;
        java.lang.String[] strArr = f968c;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            if (new java.io.File(strArr[i2]).exists()) {
                z = true;
                break;
            }
            i2++;
        }
        java.lang.String str = android.os.Build.TAGS;
        return (str != null && str.contains("test-keys")) || z;
    }
}
