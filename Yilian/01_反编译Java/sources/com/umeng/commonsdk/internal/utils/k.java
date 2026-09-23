package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class k {
    public static final java.lang.String a = "UM_PROBE_DATA";
    public static final java.lang.String b = "_dsk_s";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1492c = "_thm_z";

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1493d = "_gdf_r";

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.Object f1494e = new java.lang.Object();

    public static int a(java.lang.String str, java.lang.String str2) throws java.io.IOException {
        int i;
        if (android.os.Build.VERSION.SDK_INT > 28) {
            return -1;
        }
        java.lang.Process processExec = java.lang.Runtime.getRuntime().exec(str);
        java.io.BufferedReader bufferedReader = new java.io.BufferedReader(new java.io.InputStreamReader(processExec.getInputStream()));
        while (true) {
            java.lang.String line = bufferedReader.readLine();
            if (line == null) {
                i = -1;
                break;
            }
            if (line.contains(str2)) {
                i = 1;
                break;
            }
        }
        try {
            if (processExec.waitFor() != 0) {
                return -1;
            }
            return i;
        } catch (java.lang.InterruptedException unused) {
            return -1;
        }
    }

    public static java.lang.String a() {
        int iA;
        try {
            iA = a("ls /sys/class/thermal", "thermal_zone");
        } catch (java.lang.Throwable unused) {
            iA = -1;
        }
        return iA > 0 ? "thermal_zone" : iA < 0 ? "noper" : "unknown";
    }

    public static java.lang.String a(android.content.Context context) {
        try {
            android.content.SharedPreferences sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0);
            if (sharedPreferences == null) {
                return null;
            }
            org.json.JSONObject jSONObject = new org.json.JSONObject();
            synchronized (f1494e) {
                jSONObject.put(b, sharedPreferences.getString(b, ""));
                jSONObject.put(f1492c, sharedPreferences.getString(f1492c, ""));
                jSONObject.put(f1493d, sharedPreferences.getString(f1493d, ""));
            }
            return jSONObject.toString();
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            return null;
        }
    }

    public static java.lang.String b() {
        int iA;
        try {
            iA = a("ls /", "goldfish");
        } catch (java.lang.Throwable unused) {
            iA = -1;
        }
        return iA > 0 ? "goldfish" : iA < 0 ? "noper" : "unknown";
    }

    public static void b(final android.content.Context context) {
        if (c(context)) {
            return;
        }
        final java.lang.String[] strArr = {"unknown", "unknown", "unknown"};
        new java.lang.Thread() { // from class: com.umeng.commonsdk.internal.utils.k.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    strArr[0] = com.umeng.commonsdk.internal.utils.k.c();
                    strArr[1] = com.umeng.commonsdk.internal.utils.k.a();
                    strArr[2] = com.umeng.commonsdk.internal.utils.k.b();
                    com.umeng.commonsdk.statistics.common.ULog.i("diskType = " + strArr[0] + "; ThremalZone = " + strArr[1] + "; GoldFishRc = " + strArr[2]);
                    com.umeng.commonsdk.internal.utils.k.b(context, strArr);
                } catch (java.lang.Throwable th) {
                    com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, th);
                }
            }
        }.start();
    }

    public static void b(android.content.Context context, java.lang.String[] strArr) {
        android.content.SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return;
        }
        synchronized (f1494e) {
            sharedPreferences.edit().putString(b, strArr[0]).putString(f1492c, strArr[1]).putString(f1493d, strArr[2]).commit();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c() {
        /*
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L34
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L34
            java.lang.String r3 = "/proc/diskstats"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L34
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L34
        Ld:
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = "mtd"
            java.lang.String r3 = "sda"
            java.lang.String r4 = "mmcblk"
            if (r0 == 0) goto L30
            boolean r5 = r0.contains(r4)     // Catch: java.lang.Throwable -> L33
            if (r5 == 0) goto L21
            r2 = r4
            goto L37
        L21:
            boolean r4 = r0.contains(r3)     // Catch: java.lang.Throwable -> L33
            if (r4 == 0) goto L29
            r2 = r3
            goto L37
        L29:
            boolean r0 = r0.contains(r2)     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto Ld
            goto L37
        L30:
            java.lang.String r2 = "unknown"
            goto L37
        L33:
            r0 = r1
        L34:
            java.lang.String r2 = "noper"
            r1 = r0
        L37:
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.lang.Throwable -> L3c
        L3c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.internal.utils.k.c():java.lang.String");
    }

    public static boolean c(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences;
        return (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null || android.text.TextUtils.isEmpty(sharedPreferences.getString(b, ""))) ? false : true;
    }
}
