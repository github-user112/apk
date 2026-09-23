package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class b {
    public java.lang.String a;

    /* renamed from: c, reason: collision with root package name */
    public long f929c;

    /* renamed from: d, reason: collision with root package name */
    public long f930d;

    /* renamed from: f, reason: collision with root package name */
    public final java.util.HashMap<java.lang.Long, java.lang.String> f932f;
    public com.tencent.bugly.beta.utils.a b = null;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f931e = null;

    public b(java.lang.String str, long j, long j2) {
        this.a = null;
        this.f929c = 0L;
        this.f930d = 0L;
        java.util.HashMap<java.lang.Long, java.lang.String> map = new java.util.HashMap<>();
        this.f932f = map;
        map.put(1L, "armeabi-v4");
        this.f932f.put(2L, "armeabi-v4t");
        this.f932f.put(3L, "armeabi-v5t");
        this.f932f.put(4L, "armeabi-v5te");
        this.f932f.put(5L, "armeabi-v5tej");
        this.f932f.put(6L, "armeabi-v6");
        this.f932f.put(7L, "armeabi-v6kz");
        this.f932f.put(8L, "armeabi-v6t2");
        this.f932f.put(9L, "armeabi-v6k");
        this.f932f.put(10L, "armeabi-v7a");
        this.f932f.put(11L, "armeabi-v6-m");
        this.f932f.put(12L, "armeabi-v6s-m");
        this.f932f.put(13L, "armeabi-v7e-m");
        this.f932f.put(14L, "armeabi-v8a");
        this.a = str;
        this.f929c = j;
        this.f930d = j2;
    }

    public static synchronized long a(com.tencent.bugly.beta.utils.a aVar) {
        long j;
        byte b;
        long j2 = 0;
        j = 0;
        do {
            b = aVar.b();
            j |= (b & 127) << ((int) j2);
            j2 += 7;
        } while ((b & 128) != 0);
        return j;
    }

    public static java.lang.String a(java.lang.String str, long j, long j2) {
        com.tencent.bugly.beta.utils.b bVar = new com.tencent.bugly.beta.utils.b(str, j, j2);
        if (bVar.d()) {
            return bVar.f931e;
        }
        android.util.Log.e("ElfArmAttrParser", "Failed to parse the arch.");
        return null;
    }

    private boolean a() {
        return 0 != this.f930d;
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x004d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0001 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized boolean a(long r5) {
        /*
            r4 = this;
            monitor-enter(r4)
        L1:
            r0 = 0
            r2 = 0
            int r3 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r3 <= 0) goto L71
            com.tencent.bugly.beta.utils.a r0 = r4.b     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            long r0 = a(r0)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            int r1 = (int) r0
            r0 = 34
            if (r1 == r0) goto L5b
            r0 = 36
            if (r1 == r0) goto L5b
            r0 = 38
            if (r1 == r0) goto L5b
            r0 = 42
            if (r1 == r0) goto L5b
            r0 = 44
            if (r1 == r0) goto L5b
            r0 = 70
            if (r1 == r0) goto L5b
            switch(r1) {
                case 4: goto L47;
                case 5: goto L47;
                case 6: goto L30;
                case 7: goto L5b;
                case 8: goto L5b;
                case 9: goto L5b;
                case 10: goto L5b;
                case 11: goto L5b;
                case 12: goto L5b;
                case 13: goto L5b;
                case 14: goto L5b;
                case 15: goto L5b;
                case 16: goto L5b;
                case 17: goto L5b;
                case 18: goto L5b;
                case 19: goto L5b;
                case 20: goto L5b;
                case 21: goto L5b;
                case 22: goto L5b;
                case 23: goto L5b;
                case 24: goto L5b;
                case 25: goto L5b;
                case 26: goto L5b;
                case 27: goto L5b;
                case 28: goto L5b;
                case 29: goto L5b;
                case 30: goto L5b;
                case 31: goto L5b;
                case 32: goto L47;
                default: goto L2a;
            }
        L2a:
            switch(r1) {
                case 64: goto L5b;
                case 65: goto L47;
                case 66: goto L5b;
                case 67: goto L47;
                case 68: goto L5b;
                default: goto L2d;
            }
        L2d:
            java.lang.String r5 = "ElfArmAttrParser"
            goto L54
        L30:
            com.tencent.bugly.beta.utils.a r5 = r4.b     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            long r5 = a(r5)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            java.util.HashMap<java.lang.Long, java.lang.String> r0 = r4.f932f     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.Object r5 = r0.get(r5)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            r4.f931e = r5     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            r5 = 1
            monitor-exit(r4)
            return r5
        L47:
            java.lang.String r0 = r4.f()     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            if (r0 == 0) goto L1
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            long r0 = (long) r0
            long r5 = r5 - r0
            goto L1
        L54:
            java.lang.String r6 = "Unimplemented tag."
            android.util.Log.e(r5, r6)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            monitor-exit(r4)
            return r2
        L5b:
            com.tencent.bugly.beta.utils.a r0 = r4.b     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            a(r0)     // Catch: java.lang.Throwable -> L61 java.io.IOException -> L63
            goto L1
        L61:
            r5 = move-exception
            goto L6f
        L63:
            r5 = move-exception
            java.lang.String r5 = r5.getMessage()     // Catch: java.lang.Throwable -> L61
            java.lang.String r6 = "ElfArmAttrParser"
            android.util.Log.e(r6, r5)     // Catch: java.lang.Throwable -> L61
            monitor-exit(r4)
            return r2
        L6f:
            monitor-exit(r4)
            throw r5
        L71:
            monitor-exit(r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.utils.b.a(long):boolean");
    }

    private synchronized void b() {
        com.tencent.bugly.beta.utils.a aVar = this.b;
        if (aVar == null) {
            return;
        }
        if (aVar.a()) {
            this.b = null;
        }
    }

    private synchronized boolean c() {
        if (!a()) {
            return false;
        }
        if (this.b != null) {
            b();
        }
        try {
            com.tencent.bugly.beta.utils.a aVar = new com.tencent.bugly.beta.utils.a(this.a, this.f929c);
            this.b = aVar;
            return aVar.b(this.f930d);
        } catch (java.lang.Exception e2) {
            android.util.Log.e("ElfArmAttrParser", e2.getMessage());
            return false;
        }
    }

    private boolean d() {
        if (!c()) {
            b();
            return false;
        }
        if (!e()) {
            android.util.Log.e("ElfArmAttrParser", "Failed to parse elf header");
        }
        b();
        return true;
    }

    private synchronized boolean e() {
        try {
            if (65 != this.b.f()) {
                return false;
            }
            long jG = this.b.g();
            java.lang.String strG = g();
            if (strG != null && strG.equals("aeabi")) {
                long length = jG - strG.length();
                while (length > 0) {
                    long jF = this.b.f();
                    long jG2 = this.b.g() - 5;
                    if (1 == jF) {
                        return a(jG2);
                    }
                    this.b.b(jG2);
                }
                return true;
            }
            return false;
        } catch (java.io.IOException e2) {
            android.util.Log.e("ElfArmAttrParser", e2.getMessage());
            return false;
        }
    }

    private synchronized java.lang.String f() {
        java.lang.StringBuilder sb;
        sb = new java.lang.StringBuilder();
        while (true) {
            try {
                char cB = (char) this.b.b();
                if (cB != 0) {
                    sb.append(cB);
                }
            } catch (java.io.IOException e2) {
                android.util.Log.e("ElfArmAttrParser", e2.getMessage());
                return null;
            }
        }
        return sb.toString();
    }

    private java.lang.String g() {
        return f();
    }
}
