package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class d {

    public static class a {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public int f1479c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.String f1480d;

        /* renamed from: e, reason: collision with root package name */
        public java.lang.String f1481e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String f1482f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f1483g;
        public java.lang.String h;
        public java.lang.String i;
        public java.lang.String j;
        public java.lang.String k;
        public java.lang.String l;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x012f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x013e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0137 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.umeng.commonsdk.internal.utils.d.a a() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.d.a():com.umeng.commonsdk.internal.utils.d$a");
    }

    public static java.lang.String b() throws java.io.IOException {
        java.lang.String str = "";
        try {
            java.io.InputStream inputStream = new java.lang.ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new java.lang.String(bArr);
            }
            inputStream.close();
        } catch (java.lang.Exception unused) {
        }
        return str.trim();
    }

    public static java.lang.String c() throws java.io.IOException {
        java.lang.String str = "";
        try {
            java.io.InputStream inputStream = new java.lang.ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                str = str + new java.lang.String(bArr);
            }
            inputStream.close();
        } catch (java.lang.Exception unused) {
        }
        return str.trim();
    }

    public static java.lang.String d() throws java.lang.Throwable {
        java.io.BufferedReader bufferedReader;
        java.lang.Throwable th;
        java.io.BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new java.io.BufferedReader(new java.io.FileReader("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"));
            try {
                java.lang.String strTrim = bufferedReader.readLine().trim();
                try {
                    bufferedReader.close();
                    return strTrim;
                } catch (java.lang.Throwable unused) {
                    return strTrim;
                }
            } catch (java.lang.Exception unused2) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (java.lang.Throwable unused3) {
                    }
                }
                return "";
            } catch (java.lang.Throwable th2) {
                th = th2;
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (java.lang.Throwable unused4) {
                    }
                }
                throw th;
            }
        } catch (java.lang.Exception unused5) {
        } catch (java.lang.Throwable th3) {
            bufferedReader = null;
            th = th3;
        }
    }
}
