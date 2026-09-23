package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class i extends com.huawei.hms.framework.network.grs.c.b implements java.util.concurrent.Callable<com.huawei.hms.framework.network.grs.c.f> {
    public static final java.lang.String i = "i";

    public i(java.lang.String str, int i2, com.huawei.hms.framework.network.grs.c.a aVar, android.content.Context context, java.lang.String str2, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        super(str, i2, aVar, context, str2, grsBaseInfo, null);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [byte[]] */
    @Override // java.util.concurrent.Callable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.huawei.hms.framework.network.grs.c.f call() {
        /*
            r18 = this;
            r1 = r18
            java.lang.String r0 = com.huawei.hms.framework.network.grs.c.i.i
            java.lang.String r2 = "Get call execute"
            com.huawei.hms.framework.common.Logger.i(r0, r2)
            r2 = 0
            long r4 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L79
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L72
            java.lang.String r0 = r18.c()     // Catch: java.io.IOException -> L72
            android.content.Context r6 = r18.b()     // Catch: java.io.IOException -> L72
            java.lang.String r7 = r18.e()     // Catch: java.io.IOException -> L72
            javax.net.ssl.HttpsURLConnection r0 = com.huawei.hms.framework.network.grs.d.a.a.a(r0, r6, r7)     // Catch: java.io.IOException -> L72
            r6 = 0
            if (r0 != 0) goto L2e
            java.lang.String r0 = com.huawei.hms.framework.network.grs.c.i.i     // Catch: java.io.IOException -> L72
            java.lang.String r7 = "create HttpsURLConnection instance by url return null."
            com.huawei.hms.framework.common.Logger.w(r0, r7)     // Catch: java.io.IOException -> L72
            return r6
        L2e:
            java.lang.String r7 = "GET"
            r0.setRequestMethod(r7)     // Catch: java.io.IOException -> L72
            r0.connect()     // Catch: java.io.IOException -> L72
            int r9 = r0.getResponseCode()     // Catch: java.io.IOException -> L72
            r7 = 200(0xc8, float:2.8E-43)
            if (r9 != r7) goto L50
            java.io.InputStream r6 = r0.getInputStream()     // Catch: java.lang.Throwable -> L4b
            byte[] r7 = com.huawei.hms.framework.common.IoUtils.toByteArray(r6)     // Catch: java.lang.Throwable -> L4b
            com.huawei.hms.framework.common.IoUtils.closeSecure(r6)     // Catch: java.io.IOException -> L72
            r6 = r7
            goto L50
        L4b:
            r0 = move-exception
            com.huawei.hms.framework.common.IoUtils.closeSecure(r6)     // Catch: java.io.IOException -> L72
            throw r0     // Catch: java.io.IOException -> L72
        L50:
            java.util.Map r10 = r0.getHeaderFields()     // Catch: java.io.IOException -> L72
            r0.disconnect()     // Catch: java.io.IOException -> L72
            long r7 = android.os.SystemClock.elapsedRealtime()     // Catch: java.io.IOException -> L72
            long r14 = java.lang.System.currentTimeMillis()     // Catch: java.io.IOException -> L72
            if (r6 != 0) goto L66
            r0 = 0
            byte[] r0 = new byte[r0]     // Catch: java.io.IOException -> L72
            r11 = r0
            goto L67
        L66:
            r11 = r6
        L67:
            com.huawei.hms.framework.network.grs.c.f r0 = new com.huawei.hms.framework.network.grs.c.f     // Catch: java.io.IOException -> L72
            long r12 = r7 - r4
            r8 = r0
            r8.<init>(r9, r10, r11, r12)     // Catch: java.io.IOException -> L72
            r1.a = r0     // Catch: java.io.IOException -> L72
            goto L93
        L72:
            r0 = move-exception
            r16 = r2
            r2 = r4
            r4 = r16
            goto L7b
        L79:
            r0 = move-exception
            r4 = r2
        L7b:
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r14 = java.lang.System.currentTimeMillis()
            java.lang.String r8 = com.huawei.hms.framework.network.grs.c.i.i
            java.lang.String r9 = "RequestCallable run task catch IOException"
            com.huawei.hms.framework.common.Logger.w(r8, r9, r0)
            com.huawei.hms.framework.network.grs.c.f r8 = new com.huawei.hms.framework.network.grs.c.f
            long r6 = r6 - r2
            r8.<init>(r0, r6)
            r1.a = r8
            r2 = r4
        L93:
            com.huawei.hms.framework.network.grs.c.f r0 = r1.a
            java.lang.String r4 = r18.c()
            r0.a(r4)
            com.huawei.hms.framework.network.grs.c.f r0 = r1.a
            int r4 = r18.d()
            r0.a(r4)
            com.huawei.hms.framework.network.grs.c.f r0 = r1.a
            r0.b(r2)
            com.huawei.hms.framework.network.grs.c.f r0 = r1.a
            r0.a(r14)
            com.huawei.hms.framework.network.grs.c.a r0 = r18.a()
            if (r0 == 0) goto Lbe
            com.huawei.hms.framework.network.grs.c.a r0 = r18.a()
            com.huawei.hms.framework.network.grs.c.f r2 = r1.a
            r0.a(r2)
        Lbe:
            com.huawei.hms.framework.network.grs.c.f r0 = r1.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.c.i.call():com.huawei.hms.framework.network.grs.c.f");
    }
}
