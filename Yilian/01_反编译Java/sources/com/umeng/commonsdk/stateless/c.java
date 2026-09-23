package com.umeng.commonsdk.stateless;

/* loaded from: classes.dex */
public class c {
    public java.lang.String a = "10.0.0.172";
    public int b = 80;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1505c;

    public c(android.content.Context context) {
        this.f1505c = context;
    }

    private void a() {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1505c, "sl_domain_p", "");
        if (android.text.TextUtils.isEmpty(strImprintProperty)) {
            return;
        }
        com.umeng.commonsdk.stateless.a.i = com.umeng.commonsdk.statistics.common.DataHelper.assembleStatelessURL(strImprintProperty);
    }

    private void b() {
        java.lang.String strImprintProperty = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1505c, "sl_domain_p", "");
        java.lang.String strImprintProperty2 = com.umeng.commonsdk.framework.UMEnvelopeBuild.imprintProperty(this.f1505c, "oversea_sl_domain_p", "");
        if (!android.text.TextUtils.isEmpty(strImprintProperty)) {
            com.umeng.commonsdk.stateless.a.h = com.umeng.commonsdk.statistics.common.DataHelper.assembleStatelessURL(strImprintProperty);
        }
        if (!android.text.TextUtils.isEmpty(strImprintProperty2)) {
            com.umeng.commonsdk.stateless.a.k = com.umeng.commonsdk.statistics.common.DataHelper.assembleStatelessURL(strImprintProperty2);
        }
        com.umeng.commonsdk.stateless.a.i = com.umeng.commonsdk.stateless.a.k;
        if (android.text.TextUtils.isEmpty(com.umeng.commonsdk.statistics.b.b)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.b.b.startsWith("460") || com.umeng.commonsdk.statistics.b.b.startsWith("461")) {
            com.umeng.commonsdk.stateless.a.i = com.umeng.commonsdk.stateless.a.h;
        }
    }

    private boolean c() {
        android.net.NetworkInfo activeNetworkInfo;
        java.lang.String extraInfo;
        android.content.Context context = this.f1505c;
        if (context == null || context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f1505c.getPackageName()) != 0) {
            return false;
        }
        try {
            android.net.ConnectivityManager connectivityManager = (android.net.ConnectivityManager) this.f1505c.getSystemService("connectivity");
            if (com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(this.f1505c, "android.permission.ACCESS_NETWORK_STATE") && connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                    if (extraInfo.equals("uniwap")) {
                    }
                }
                return true;
            }
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(this.f1505c, th);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x010b A[EXC_TOP_SPLITTER, PHI: r2 r4 r13
  0x010b: PHI (r2v3 boolean) = (r2v0 boolean), (r2v0 boolean), (r2v4 boolean), (r2v4 boolean) binds: [B:39:0x0124, B:48:0x0135, B:61:0x010b, B:25:0x0108] A[DONT_GENERATE, DONT_INLINE]
  0x010b: PHI (r4v8 java.io.OutputStream) = (r4v5 java.io.OutputStream), (r4v6 java.io.OutputStream), (r4v11 java.io.OutputStream), (r4v11 java.io.OutputStream) binds: [B:39:0x0124, B:48:0x0135, B:61:0x010b, B:25:0x0108] A[DONT_GENERATE, DONT_INLINE]
  0x010b: PHI (r13v8 ??) = (r13v5 javax.net.ssl.HttpsURLConnection), (r13v6 javax.net.ssl.HttpsURLConnection), (r13v13 ??), (r13v13 ??) binds: [B:39:0x0124, B:48:0x0135, B:61:0x010b, B:25:0x0108] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0138 A[PHI: r2 r4 r13
  0x0138: PHI (r2v2 boolean) = (r2v0 boolean), (r2v0 boolean), (r2v3 boolean) binds: [B:39:0x0124, B:48:0x0135, B:26:0x010b] A[DONT_GENERATE, DONT_INLINE]
  0x0138: PHI (r4v7 java.io.OutputStream) = (r4v5 java.io.OutputStream), (r4v6 java.io.OutputStream), (r4v8 java.io.OutputStream) binds: [B:39:0x0124, B:48:0x0135, B:26:0x010b] A[DONT_GENERATE, DONT_INLINE]
  0x0138: PHI (r13v7 ??) = (r13v5 javax.net.ssl.HttpsURLConnection), (r13v6 javax.net.ssl.HttpsURLConnection), (r13v8 ??) binds: [B:39:0x0124, B:48:0x0135, B:26:0x010b] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v13, types: [javax.net.ssl.HttpsURLConnection] */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8, types: [javax.net.ssl.HttpsURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(byte[] r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.stateless.c.a(byte[], java.lang.String, java.lang.String, java.lang.String):boolean");
    }
}
