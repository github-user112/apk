package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class r {
    public static com.tencent.bugly.proguard.r a = new com.tencent.bugly.proguard.r();
    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy b;

    /* renamed from: c, reason: collision with root package name */
    public com.tencent.bugly.beta.download.DownloadTask f1139c;

    /* renamed from: g, reason: collision with root package name */
    public com.tencent.bugly.beta.global.d f1143g;
    public boolean h;

    /* renamed from: d, reason: collision with root package name */
    public final android.os.Handler f1140d = new android.os.Handler(android.os.Looper.getMainLooper());

    /* renamed from: e, reason: collision with root package name */
    public com.tencent.bugly.beta.download.DownloadListener f1141e = new com.tencent.bugly.beta.download.a(4, this, 0);

    /* renamed from: f, reason: collision with root package name */
    public com.tencent.bugly.beta.upgrade.a f1142f = null;
    public final java.lang.Object i = new java.lang.Object();

    public class a implements java.lang.Runnable {
        public final /* synthetic */ com.tencent.bugly.proguard.C0259x a;

        public a(com.tencent.bugly.proguard.r rVar, com.tencent.bugly.proguard.C0259x c0259x) {
            this.a = c0259x;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.beta.global.e.b.Y.onPatchReceived(this.a.a());
        }
    }

    private void a() {
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = this.b;
        if (betaGrayStrategy == null) {
            return;
        }
        if (this.f1139c == null) {
            com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
            com.tencent.bugly.beta.download.DownloadTask downloadTaskA = eVar.s.a(betaGrayStrategy.a.k.f1165c, eVar.K.getAbsolutePath(), null, this.b.a.k.b);
            this.f1139c = downloadTaskA;
            downloadTaskA.setDownloadType(3);
        }
        com.tencent.bugly.beta.download.DownloadTask downloadTask = this.f1139c;
        if (downloadTask == null) {
            return;
        }
        downloadTask.addListener(this.f1141e);
        this.f1139c.setNeededNotify(false);
        this.f1139c.download();
    }

    private void a(com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy) {
        com.tencent.bugly.proguard.B b = betaGrayStrategy.a;
        if (b == null || b.u != 3) {
            return;
        }
        com.tencent.bugly.beta.global.a.a("hotfix.strategy.bch", betaGrayStrategy);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0198  */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy a(com.tencent.bugly.proguard.B r24) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.r.a(com.tencent.bugly.proguard.B):com.tencent.bugly.beta.upgrade.BetaGrayStrategy");
    }

    public synchronized void a(int i, com.tencent.bugly.proguard.B b, boolean z) {
        com.tencent.bugly.proguard.C0259x c0259xA;
        java.io.File file;
        this.f1139c = null;
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategyA = a(b);
        this.b = betaGrayStrategyA;
        if (i == 0 && betaGrayStrategyA != null) {
            com.tencent.bugly.proguard.B b2 = betaGrayStrategyA.a;
            if (b2 == null || b2.k == null || (file = com.tencent.bugly.beta.global.e.b.I) == null || !file.exists() || !com.tencent.bugly.beta.global.a.a(file, this.b.a.k.b, "SHA")) {
                if (b != null) {
                    if (com.tencent.bugly.beta.global.e.b.Y != null && (c0259xA = this.b.a.a()) != null) {
                        this.f1140d.post(new com.tencent.bugly.proguard.r.a(this, c0259xA));
                    }
                    if ((com.tencent.bugly.beta.global.e.b.aa || z) && com.tencent.bugly.beta.global.e.b.ba) {
                        a();
                    }
                }
                return;
            }
            com.tencent.bugly.proguard.aa.c("patch has downloaded!", new java.lang.Object[0]);
            com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
            if (!eVar.P && eVar.Q <= 3) {
                com.tencent.bugly.proguard.aa.c("patch has downloaded but not patched execute patch!", new java.lang.Object[0]);
                com.tencent.bugly.beta.global.e eVar2 = com.tencent.bugly.beta.global.e.b;
                int i2 = eVar2.Q + 1;
                eVar2.Q = i2;
                com.tencent.bugly.beta.global.a.b("PATCH_MAX_TIMES", java.lang.String.valueOf(i2));
                com.tencent.bugly.beta.global.a.a(file, com.tencent.bugly.beta.global.e.b.J);
                com.tencent.bugly.beta.tinker.TinkerManager.getInstance().onDownloadSuccess(com.tencent.bugly.beta.global.e.b.J.getAbsolutePath(), com.tencent.bugly.beta.global.e.b.X);
            }
        }
    }

    public void a(boolean z, boolean z2, int i) {
        long j;
        synchronized (this.i) {
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = (i != 3 || z) ? null : (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("hotfix.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
            if (this.f1142f != null && !this.f1142f.f918d && this.h == z) {
                synchronized (this.f1142f) {
                    this.f1142f.f917c[0] = java.lang.Boolean.valueOf(z);
                    this.f1142f.f917c[1] = java.lang.Boolean.valueOf(z2);
                }
                this.f1143g.b[0] = java.lang.Boolean.FALSE;
            }
            this.h = z;
            if (this.f1142f != null) {
                this.f1142f.f918d = true;
            }
            com.tencent.bugly.beta.upgrade.a aVar = new com.tencent.bugly.beta.upgrade.a(1, 804, java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(z2), betaGrayStrategy);
            this.f1142f = aVar;
            this.f1143g = new com.tencent.bugly.beta.global.d(12, java.lang.Boolean.FALSE, aVar);
            java.lang.String str = "";
            if (betaGrayStrategy != null) {
                try {
                    if (betaGrayStrategy.a != null) {
                        str = betaGrayStrategy.a.r;
                        j = betaGrayStrategy.a.t;
                    }
                    java.lang.String str2 = str;
                    java.util.HashMap map = new java.util.HashMap();
                    map.put("G16", com.tencent.bugly.beta.global.e.b.N);
                    com.tencent.bugly.beta.upgrade.b.a.a(804, i, com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) new com.tencent.bugly.proguard.C(z ? 1 : 0, str2, j, map)), this.f1142f, z, com.tencent.bugly.beta.global.e.b.H.a.h);
                } catch (java.lang.Throwable th) {
                    if (!com.tencent.bugly.proguard.aa.a(th)) {
                        th.printStackTrace();
                    }
                }
            }
            j = 0;
            java.lang.String str22 = str;
            java.util.HashMap map2 = new java.util.HashMap();
            map2.put("G16", com.tencent.bugly.beta.global.e.b.N);
            com.tencent.bugly.beta.upgrade.b.a.a(804, i, com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) new com.tencent.bugly.proguard.C(z ? 1 : 0, str22, j, map2)), this.f1142f, z, com.tencent.bugly.beta.global.e.b.H.a.h);
        }
    }
}
