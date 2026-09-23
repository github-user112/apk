package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class ad implements com.umeng.analytics.pro.y {
    public boolean a = false;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0031, code lost:
    
        if (r4.versionCode >= 1) goto L18;
     */
    @Override // com.umeng.analytics.pro.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(android.content.Context r10) throws android.content.pm.PackageManager.NameNotFoundException {
        /*
            r9 = this;
            r0 = 2
            r1 = 0
            r2 = 0
            r3 = 1
            boolean r4 = r9.a     // Catch: java.lang.Exception -> L62
            if (r4 != 0) goto L42
            g.a.a.a.a.a$b r4 = g.a.a.a.a.a.b.C0095b.a     // Catch: java.lang.Exception -> L62
            android.content.Context r5 = r10.getApplicationContext()     // Catch: java.lang.Exception -> L62
            if (r4 == 0) goto L41
            android.content.pm.PackageManager r4 = r5.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L62
            java.lang.String r5 = "com.heytap.openid"
            android.content.pm.PackageInfo r4 = r4.getPackageInfo(r5, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L62
            int r5 = android.os.Build.VERSION.SDK_INT     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L62
            r6 = 28
            if (r5 < r6) goto L2d
            if (r4 == 0) goto L39
            long r4 = r4.getLongVersionCode()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L62
            r6 = 1
            int r8 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r8 < 0) goto L39
            goto L33
        L2d:
            if (r4 == 0) goto L39
            int r4 = r4.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L35 java.lang.Exception -> L62
            if (r4 < r3) goto L39
        L33:
            r4 = 1
            goto L3a
        L35:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Exception -> L62
        L39:
            r4 = 0
        L3a:
            d.s.y.x = r4     // Catch: java.lang.Exception -> L62
            d.s.y.w = r3     // Catch: java.lang.Exception -> L62
            r9.a = r3     // Catch: java.lang.Exception -> L62
            goto L42
        L41:
            throw r1     // Catch: java.lang.Exception -> L62
        L42:
            boolean r4 = d.s.y.w     // Catch: java.lang.Exception -> L62
            if (r4 == 0) goto L5a
            boolean r4 = d.s.y.x     // Catch: java.lang.Exception -> L62
            if (r4 != 0) goto L54
            java.lang.String[] r10 = new java.lang.String[r3]     // Catch: java.lang.Exception -> L62
            java.lang.String r4 = "当前设备不支持获取OAID"
            r10[r2] = r4     // Catch: java.lang.Exception -> L62
            com.umeng.commonsdk.debug.UMLog.mutlInfo(r0, r10)     // Catch: java.lang.Exception -> L62
            goto L6b
        L54:
            java.lang.String r10 = d.s.y.g(r10)     // Catch: java.lang.Exception -> L62
            r1 = r10
            goto L6b
        L5a:
            java.lang.RuntimeException r10 = new java.lang.RuntimeException     // Catch: java.lang.Exception -> L62
            java.lang.String r4 = "SDK Need Init First!"
            r10.<init>(r4)     // Catch: java.lang.Exception -> L62
            throw r10     // Catch: java.lang.Exception -> L62
        L62:
            java.lang.String[] r10 = new java.lang.String[r3]
            java.lang.String r3 = "未检测到您集成OAID SDK包"
            r10[r2] = r3
            com.umeng.commonsdk.debug.UMLog.mutlInfo(r0, r10)
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.analytics.pro.ad.a(android.content.Context):java.lang.String");
    }
}
