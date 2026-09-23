package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class X implements java.lang.Runnable {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f1099c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1100d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f1101e;

    /* renamed from: f, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.info.a f1102f;

    /* renamed from: g, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.strategy.c f1103g;
    public final com.tencent.bugly.proguard.P h;
    public final com.tencent.bugly.proguard.W i;
    public final int j;
    public final com.tencent.bugly.proguard.T k;
    public final com.tencent.bugly.proguard.T l;
    public java.lang.String m;
    public final java.lang.String n;
    public final java.util.Map<java.lang.String, java.lang.String> o;
    public int p;
    public long q;
    public long r;
    public boolean s;

    public X(android.content.Context context, int i, int i2, byte[] bArr, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, boolean z, int i3, int i4, boolean z2, java.util.Map<java.lang.String, java.lang.String> map) {
        this.a = 2;
        this.b = 30000;
        this.m = null;
        this.p = 0;
        this.q = 0L;
        this.r = 0L;
        this.s = false;
        this.f1099c = context;
        this.f1102f = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f1101e = bArr;
        this.f1103g = com.tencent.bugly.crashreport.common.strategy.c.b();
        this.h = com.tencent.bugly.proguard.P.a(context);
        com.tencent.bugly.proguard.W wA = com.tencent.bugly.proguard.W.a();
        this.i = wA;
        this.j = i;
        this.m = str;
        this.n = str2;
        this.k = t;
        this.l = wA.f1095d;
        this.f1100d = i2;
        if (i3 > 0) {
            this.a = i3;
        }
        if (i4 > 0) {
            this.b = i4;
        }
        this.s = z2;
        this.o = map;
    }

    public X(android.content.Context context, int i, int i2, byte[] bArr, java.lang.String str, java.lang.String str2, com.tencent.bugly.proguard.T t, boolean z, boolean z2) {
        this(context, i, i2, bArr, str, str2, t, z, 2, 30000, z2, null);
    }

    private android.util.Pair<java.lang.Boolean, java.lang.Boolean> a(java.util.Map<java.lang.String, java.lang.String> map) {
        if (!b(map)) {
            com.tencent.bugly.proguard.aa.a("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
            a(1, "[Upload] Failed to upload for no status header.");
            if (map != null) {
                for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                    com.tencent.bugly.proguard.aa.a(java.lang.String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new java.lang.Object[0]);
                }
            }
            com.tencent.bugly.proguard.aa.a("[Upload] Failed to upload for no status header.", new java.lang.Object[0]);
            return new android.util.Pair<>(java.lang.Boolean.FALSE, java.lang.Boolean.TRUE);
        }
        int i = -1;
        try {
            int i2 = java.lang.Integer.parseInt(map.get(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS));
            try {
                com.tencent.bugly.proguard.aa.a("[Upload] Status from server is %d (pid=%d | tid=%d).", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
                if (i2 == 0) {
                    java.lang.Boolean bool = java.lang.Boolean.TRUE;
                    return new android.util.Pair<>(bool, bool);
                }
                a(null, false, 1, e.a.c.a.a.K("status of server is ", i2), i2);
                java.lang.Boolean bool2 = java.lang.Boolean.FALSE;
                return new android.util.Pair<>(bool2, bool2);
            } catch (java.lang.Throwable unused) {
                i = i2;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("[Upload] Failed to upload for format of status header is invalid: ");
                sbO.append(java.lang.Integer.toString(i));
                a(1, sbO.toString());
                return new android.util.Pair<>(java.lang.Boolean.FALSE, java.lang.Boolean.TRUE);
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    private android.util.Pair<java.lang.Boolean, java.lang.Boolean> a(byte[] bArr, com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        byte[] bArrA = com.tencent.bugly.proguard.ha.a(bArr, 2);
        if (bArrA != null) {
            bArr = bArrA;
        }
        com.tencent.bugly.proguard.ua uaVarA = com.tencent.bugly.proguard.N.a(bArr, strategyBean, true);
        if (uaVarA == null) {
            a(null, false, 1, "failed to decode response package", 0);
            java.lang.Boolean bool = java.lang.Boolean.FALSE;
            return new android.util.Pair<>(bool, bool);
        }
        java.lang.Object[] objArr = new java.lang.Object[2];
        objArr[0] = java.lang.Integer.valueOf(uaVarA.f1155d);
        byte[] bArr2 = uaVarA.f1156e;
        objArr[1] = java.lang.Integer.valueOf(bArr2 != null ? bArr2.length : 0);
        com.tencent.bugly.proguard.aa.a("[Upload] Response cmd is: %d, length of sBuffer is: %d", objArr);
        if (a(uaVarA, this.f1102f, this.f1103g)) {
            a(uaVarA, true, 2, "successfully uploaded", 0);
            java.lang.Boolean bool2 = java.lang.Boolean.TRUE;
            return new android.util.Pair<>(bool2, bool2);
        }
        a(uaVarA, false, 2, "failed to process response package", 0);
        java.lang.Boolean bool3 = java.lang.Boolean.FALSE;
        return new android.util.Pair<>(bool3, bool3);
    }

    private android.util.Pair<java.lang.Boolean, java.lang.Boolean> a(byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map) {
        if (bArr == null) {
            a(1, "Failed to upload for no response!");
            return new android.util.Pair<>(java.lang.Boolean.FALSE, java.lang.Boolean.TRUE);
        }
        com.tencent.bugly.proguard.aa.a("[Upload] Received %d bytes", java.lang.Integer.valueOf(bArr.length));
        if (bArr.length != 0) {
            java.lang.Boolean bool = java.lang.Boolean.TRUE;
            return new android.util.Pair<>(bool, bool);
        }
        a(null, false, 1, "response data from server is empty", 0);
        if (map != null) {
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
                com.tencent.bugly.proguard.aa.a("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
            }
        }
        java.lang.Boolean bool2 = java.lang.Boolean.FALSE;
        return new android.util.Pair<>(bool2, bool2);
    }

    public static java.lang.String a(java.lang.String str) {
        if (com.tencent.bugly.proguard.ha.b(str)) {
            return str;
        }
        try {
            return java.lang.String.format("%s?aid=%s", str, java.util.UUID.randomUUID().toString());
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
            return str;
        }
    }

    private boolean a(byte[] bArr, java.util.Map<java.lang.String, java.lang.String> map, com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        java.lang.Object obj;
        android.util.Pair<java.lang.Boolean, java.lang.Boolean> pairA = a(bArr, map);
        if (((java.lang.Boolean) pairA.first).booleanValue()) {
            android.util.Pair<java.lang.Boolean, java.lang.Boolean> pairA2 = a(map);
            if (((java.lang.Boolean) pairA2.first).booleanValue()) {
                android.util.Pair<java.lang.Boolean, java.lang.Boolean> pairA3 = a(bArr, strategyBean);
                if (((java.lang.Boolean) pairA3.first).booleanValue()) {
                    return false;
                }
                obj = pairA3.second;
            } else {
                obj = pairA2.second;
            }
        } else {
            obj = pairA.second;
        }
        return ((java.lang.Boolean) obj).booleanValue();
    }

    private java.util.Map<java.lang.String, java.lang.String> b() {
        java.util.HashMap map = new java.util.HashMap(10);
        map.put("tls", "1");
        map.put("prodId", this.f1102f.e());
        map.put("bundleId", this.f1102f.f967g);
        map.put("appVer", this.f1102f.F);
        java.util.Map<java.lang.String, java.lang.String> map2 = this.o;
        if (map2 != null) {
            map.putAll(map2);
        }
        map.put("cmd", java.lang.Integer.toString(this.f1100d));
        map.put("platformId", java.lang.Byte.toString((byte) 1));
        map.put("sdkVer", this.f1102f.l);
        map.put("strategylastUpdateTime", java.lang.Long.toString(this.f1103g.c().o));
        return map;
    }

    public static boolean b(java.util.Map<java.lang.String, java.lang.String> map) {
        if (map == null || map.size() == 0) {
            com.tencent.bugly.proguard.aa.e("[Upload] Headers is empty.", new java.lang.Object[0]);
            return false;
        }
        if (!map.containsKey(net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS)) {
            com.tencent.bugly.proguard.aa.e("[Upload] Headers does not contain %s", net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS);
            return false;
        }
        if (!map.containsKey("Bugly-Version")) {
            com.tencent.bugly.proguard.aa.e("[Upload] Headers does not contain %s", "Bugly-Version");
            return false;
        }
        java.lang.String str = map.get("Bugly-Version");
        if (str.contains("bugly")) {
            com.tencent.bugly.proguard.aa.a("[Upload] Bugly version from headers is: %s", str);
            return true;
        }
        com.tencent.bugly.proguard.aa.e("[Upload] Bugly version is not valid: %s", str);
        return false;
    }

    private java.lang.String c() {
        com.tencent.bugly.crashreport.common.strategy.c cVar;
        if (com.tencent.bugly.crashreport.common.info.d.b(this.f1099c) == null) {
            return "network is not available";
        }
        byte[] bArr = this.f1101e;
        if (bArr == null || bArr.length == 0) {
            return "request package is empty!";
        }
        if (this.f1099c == null || this.f1102f == null || (cVar = this.f1103g) == null || this.h == null) {
            return "illegal access error";
        }
        if (cVar.c() == null) {
            return "illegal local strategy";
        }
        return null;
    }

    public void a() {
        this.i.a(this.j, java.lang.System.currentTimeMillis());
        com.tencent.bugly.proguard.T t = this.k;
        if (t != null) {
            t.a(this.f1100d);
        }
        com.tencent.bugly.proguard.T t2 = this.l;
        if (t2 != null) {
            t2.a(this.f1100d);
        }
    }

    public void a(int i, java.lang.String str) {
        com.tencent.bugly.proguard.aa.b("[Upload] Failed to upload(%d): %s", java.lang.Integer.valueOf(i), str);
    }

    public void a(long j) {
        this.r += j;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.tencent.bugly.proguard.ua r14, boolean r15, int r16, java.lang.String r17, int r18) {
        /*
            r13 = this;
            r0 = r13
            int r1 = r0.f1100d
            r2 = 630(0x276, float:8.83E-43)
            if (r1 == r2) goto L1b
            r2 = 640(0x280, float:8.97E-43)
            if (r1 == r2) goto L18
            r2 = 830(0x33e, float:1.163E-42)
            if (r1 == r2) goto L1b
            r2 = 840(0x348, float:1.177E-42)
            if (r1 == r2) goto L18
            java.lang.String r1 = java.lang.String.valueOf(r1)
            goto L1d
        L18:
            java.lang.String r1 = "userinfo"
            goto L1d
        L1b:
            java.lang.String r1 = "crash"
        L1d:
            r2 = 1
            r3 = 0
            if (r15 == 0) goto L2b
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r3] = r1
            java.lang.String r1 = "[Upload] Success: %s"
            com.tencent.bugly.proguard.aa.c(r1, r2)
            goto L3e
        L2b:
            r4 = 3
            java.lang.Object[] r4 = new java.lang.Object[r4]
            java.lang.Integer r5 = java.lang.Integer.valueOf(r16)
            r4[r3] = r5
            r4[r2] = r1
            r1 = 2
            r4[r1] = r17
            java.lang.String r1 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.aa.b(r1, r4)
        L3e:
            long r1 = r0.q
            long r3 = r0.r
            long r1 = r1 + r3
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L5e
            com.tencent.bugly.proguard.W r1 = r0.i
            boolean r2 = r0.s
            long r1 = r1.a(r2)
            long r3 = r0.q
            long r1 = r1 + r3
            long r3 = r0.r
            long r1 = r1 + r3
            com.tencent.bugly.proguard.W r3 = r0.i
            boolean r4 = r0.s
            r3.a(r1, r4)
        L5e:
            com.tencent.bugly.proguard.T r4 = r0.k
            if (r4 == 0) goto L6f
            int r5 = r0.f1100d
            long r7 = r0.q
            long r9 = r0.r
            r6 = r14
            r11 = r15
            r12 = r17
            r4.a(r5, r6, r7, r9, r11, r12)
        L6f:
            com.tencent.bugly.proguard.T r4 = r0.l
            if (r4 == 0) goto L80
            int r5 = r0.f1100d
            long r7 = r0.q
            long r9 = r0.r
            r6 = r14
            r11 = r15
            r12 = r17
            r4.a(r5, r6, r7, r9, r11, r12)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.X.a(com.tencent.bugly.proguard.ua, boolean, int, java.lang.String, int):void");
    }

    public void a(java.lang.String str, long j, java.lang.String str2) {
        this.p++;
        this.q += j;
    }

    public boolean a(com.tencent.bugly.proguard.ua uaVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.crashreport.common.strategy.c cVar) throws java.lang.NumberFormatException {
        if (uaVar == null) {
            com.tencent.bugly.proguard.aa.e("resp == null!", new java.lang.Object[0]);
            return false;
        }
        byte b = uaVar.f1154c;
        if (b != 0) {
            com.tencent.bugly.proguard.aa.b("resp result error %d", java.lang.Byte.valueOf(b));
            return false;
        }
        try {
            if (!com.tencent.bugly.proguard.ha.b(uaVar.i) && !com.tencent.bugly.crashreport.common.info.a.n().r().equals(uaVar.i)) {
                com.tencent.bugly.proguard.J.a().a(com.tencent.bugly.crashreport.common.strategy.c.a, "device", uaVar.i.getBytes(com.google.android.exoplayer2.C.UTF8_NAME), (com.tencent.bugly.proguard.I) null, true);
                aVar.h(uaVar.i);
            }
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b(th);
        }
        aVar.u = uaVar.f1158g;
        int i = uaVar.f1155d;
        if (i == 510) {
            byte[] bArr = uaVar.f1156e;
            if (bArr == null) {
                com.tencent.bugly.proguard.aa.b("[Upload] Strategy data is null. Response cmd: %d", java.lang.Integer.valueOf(i));
                return false;
            }
            com.tencent.bugly.proguard.wa waVar = (com.tencent.bugly.proguard.wa) com.tencent.bugly.proguard.N.a(bArr, com.tencent.bugly.proguard.wa.class);
            if (waVar == null) {
                com.tencent.bugly.proguard.aa.b("[Upload] Failed to decode strategy from server. Response cmd: %d", java.lang.Integer.valueOf(uaVar.f1155d));
                return false;
            }
            cVar.a(waVar);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.p = 0;
            this.q = 0L;
            this.r = 0L;
            java.lang.String strC = c();
            if (strC != null) {
                a(null, false, 0, strC, 0);
                return;
            }
            byte[] bArrB = com.tencent.bugly.proguard.ha.b(this.f1101e, 2);
            if (bArrB == null) {
                a(null, false, 0, "failed to zip request body", 0);
                return;
            }
            java.util.Map<java.lang.String, java.lang.String> mapB = b();
            a();
            java.lang.String strA = this.m;
            com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBeanC = this.f1103g.c();
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i + 1;
                if (i >= this.a) {
                    a(null, false, i2, "failed after many attempts", 0);
                    return;
                }
                if (i3 > 1) {
                    com.tencent.bugly.proguard.aa.e("[Upload] Failed to upload last time, wait and try(%d) again.", java.lang.Integer.valueOf(i3));
                    com.tencent.bugly.proguard.ha.c(this.b);
                    if (i3 == this.a) {
                        com.tencent.bugly.proguard.aa.e("[Upload] Use the back-up url at the last time: %s", this.n);
                        strA = this.n;
                    }
                }
                com.tencent.bugly.proguard.aa.a("[Upload] Send %d bytes", java.lang.Integer.valueOf(bArrB.length));
                strA = a(strA);
                com.tencent.bugly.proguard.aa.a("[Upload] Upload to %s with cmd %d (pid=%d | tid=%d).", strA, java.lang.Integer.valueOf(this.f1100d), java.lang.Integer.valueOf(android.os.Process.myPid()), java.lang.Integer.valueOf(android.os.Process.myTid()));
                if (!a(this.h.a(strA, bArrB, this, mapB), this.h.f1087c, strategyBeanC)) {
                    return;
                }
                i = i3;
                i2 = 1;
            }
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }
}
