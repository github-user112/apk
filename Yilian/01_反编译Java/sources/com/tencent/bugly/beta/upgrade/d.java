package com.tencent.bugly.beta.upgrade;

/* loaded from: classes.dex */
public class d {
    public static com.tencent.bugly.beta.upgrade.d a = new com.tencent.bugly.beta.upgrade.d();
    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy b;

    /* renamed from: c, reason: collision with root package name */
    public com.tencent.bugly.beta.download.DownloadTask f919c;

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.beta.download.DownloadListener f920d;

    /* renamed from: e, reason: collision with root package name */
    public com.tencent.bugly.beta.upgrade.UpgradeListener f921e;

    /* renamed from: f, reason: collision with root package name */
    public com.tencent.bugly.beta.upgrade.UpgradeStateListener f922f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f923g;
    public boolean h;
    public com.tencent.bugly.beta.global.d i;
    public com.tencent.bugly.beta.global.d j;
    public int k;
    public final java.lang.Object l = new java.lang.Object();
    public final java.lang.Object m = new java.lang.Object();
    public com.tencent.bugly.beta.download.DownloadListener n = new com.tencent.bugly.beta.download.a(3, this, 0);
    public com.tencent.bugly.beta.upgrade.a o = null;
    public com.tencent.bugly.beta.global.d p;
    public boolean q;
    public int r;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ boolean a;

        public a(boolean z) {
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.beta.upgrade.d.this.a(this.a);
        }
    }

    private void a() {
        com.tencent.bugly.proguard.B b = b();
        if (b == null) {
            return;
        }
        if (this.f919c == null) {
            this.f919c = c();
        }
        if (this.f919c == null) {
            return;
        }
        a(this.b);
        com.tencent.bugly.beta.download.BetaReceiver.addTask(this.f919c);
        if (this.f919c.getStatus() != 1 || this.h) {
            this.f919c.download();
        } else if (this.f923g && com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v, this.f919c.getSaveFile(), b.k.b)) {
            com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("install", java.lang.System.currentTimeMillis(), (byte) 0, 0L, b.j, b.r, b.u, null));
        } else {
            b(this.f923g);
        }
    }

    private void a(com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy) {
        com.tencent.bugly.proguard.B b = betaGrayStrategy.a;
        if (b == null || b.u != 1) {
            return;
        }
        com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", betaGrayStrategy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        com.tencent.bugly.proguard.B b = b();
        if (b == null) {
            return;
        }
        if (java.lang.System.currentTimeMillis() <= b.b() - 86400000) {
            com.tencent.bugly.proguard.aa.b(java.lang.System.currentTimeMillis() + "ms", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.beta.global.f.a.a(com.tencent.bugly.beta.global.e.b.s, b.q);
        if (this.f919c == null) {
            this.f919c = c();
        }
        com.tencent.bugly.beta.download.DownloadTask downloadTask = this.f919c;
        if (downloadTask == null) {
            return;
        }
        if (!z && downloadTask.getStatus() == 2) {
            com.tencent.bugly.proguard.aa.c("Task is downloading %s %s", b.r, this.f919c.getDownloadUrl());
            return;
        }
        this.f919c.addListener(this.n);
        com.tencent.bugly.beta.download.DownloadListener downloadListener = this.f920d;
        if (downloadListener != null) {
            this.f919c.addListener(downloadListener);
        }
        com.tencent.bugly.beta.ui.UpgradeDialog upgradeDialog = com.tencent.bugly.beta.ui.UpgradeDialog.instance;
        upgradeDialog.setUpgradeInfo(b, this.f919c);
        upgradeDialog.upgradeRunnable = new com.tencent.bugly.beta.global.d(3, this.b, this.f919c);
        upgradeDialog.cancelRunnable = new com.tencent.bugly.beta.global.d(4, this.b, this.f919c, java.lang.Boolean.valueOf(z));
        this.b.f914c = java.lang.System.currentTimeMillis();
        a(this.b);
        if (z) {
            com.tencent.bugly.beta.global.f.a.a(new com.tencent.bugly.beta.global.d(2, upgradeDialog, java.lang.Boolean.valueOf(z)), 3000);
            return;
        }
        com.tencent.bugly.beta.global.f fVar = com.tencent.bugly.beta.global.f.a;
        java.lang.Object[] objArr = new java.lang.Object[2];
        objArr[0] = upgradeDialog;
        objArr[1] = java.lang.Boolean.valueOf(z || b.l == 2);
        fVar.a(new com.tencent.bugly.beta.global.d(2, objArr));
    }

    private com.tencent.bugly.proguard.B b() {
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy = this.b;
        if (betaGrayStrategy == null) {
            return null;
        }
        return betaGrayStrategy.a;
    }

    private void b(boolean z) {
        new android.os.Handler(android.os.Looper.getMainLooper()).post(new com.tencent.bugly.beta.upgrade.d.a(z));
    }

    private com.tencent.bugly.beta.download.DownloadTask c() {
        com.tencent.bugly.proguard.B b = b();
        if (b == null) {
            return null;
        }
        if (this.f919c == null) {
            com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
            com.tencent.bugly.beta.download.DownloadTask downloadTaskA = eVar.s.a(b.k.f1165c, eVar.w.getAbsolutePath(), null, this.b.a.k.b);
            this.f919c = downloadTaskA;
            downloadTaskA.setDownloadType(1);
        }
        return this.f919c;
    }

    public com.tencent.bugly.beta.upgrade.BetaGrayStrategy a(com.tencent.bugly.proguard.B b) {
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy;
        com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy2;
        com.tencent.bugly.proguard.B b2 = b;
        synchronized (this.l) {
            com.tencent.bugly.beta.upgrade.BetaGrayStrategy betaGrayStrategy3 = (com.tencent.bugly.beta.upgrade.BetaGrayStrategy) com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch", com.tencent.bugly.beta.upgrade.BetaGrayStrategy.CREATOR);
            betaGrayStrategy = null;
            if (betaGrayStrategy3 != null && betaGrayStrategy3.a == null) {
                com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch");
                betaGrayStrategy3 = null;
            }
            if (betaGrayStrategy3 != null && betaGrayStrategy3.a != null && (betaGrayStrategy3.a.j.f1175d < com.tencent.bugly.beta.global.e.b.z || ((betaGrayStrategy3.a.j.f1175d == com.tencent.bugly.beta.global.e.b.z && betaGrayStrategy3.a.j.f1177f <= com.tencent.bugly.beta.global.e.b.r) || betaGrayStrategy3.a.s != 1 || (betaGrayStrategy3.a.k != null && android.text.TextUtils.equals(com.tencent.bugly.beta.global.e.b.y, betaGrayStrategy3.a.k.b))))) {
                com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch");
                this.f919c = null;
                betaGrayStrategy3 = null;
            }
            if (b2 != null && (b2.j.f1175d < com.tencent.bugly.beta.global.e.b.z || (b2.j.f1175d == com.tencent.bugly.beta.global.e.b.z && b2.j.f1177f <= com.tencent.bugly.beta.global.e.b.r))) {
                com.tencent.bugly.proguard.aa.c("versionCode is too small, discard remote strategy: [new: %d buildno: %d] [current: %d buildno: %d]", java.lang.Integer.valueOf(b2.j.f1175d), java.lang.Integer.valueOf(b2.j.f1177f), java.lang.Integer.valueOf(com.tencent.bugly.beta.global.e.b.z), java.lang.Integer.valueOf(com.tencent.bugly.beta.global.e.b.r));
                b2 = null;
            }
            if (b2 != null) {
                if (b2.s == 2 && betaGrayStrategy3 != null && betaGrayStrategy3.a != null && !android.text.TextUtils.isEmpty(b2.r) && !android.text.TextUtils.isEmpty(betaGrayStrategy3.a.r) && android.text.TextUtils.equals(b2.r, betaGrayStrategy3.a.r)) {
                    com.tencent.bugly.proguard.aa.c("撤回 strategy: %s", b2.r);
                    betaGrayStrategy3 = null;
                }
                if (b2.s != 1) {
                    com.tencent.bugly.proguard.aa.c("invalid strategy: %s", b2.r);
                    b2 = null;
                }
            }
            if (b2 != null) {
                if (betaGrayStrategy3 == null || betaGrayStrategy3.a == null || android.text.TextUtils.isEmpty(b2.r) || android.text.TextUtils.isEmpty(betaGrayStrategy3.a.r) || !android.text.TextUtils.equals(b2.r, betaGrayStrategy3.a.r)) {
                    betaGrayStrategy2 = new com.tencent.bugly.beta.upgrade.BetaGrayStrategy();
                } else {
                    betaGrayStrategy2 = new com.tencent.bugly.beta.upgrade.BetaGrayStrategy(com.tencent.bugly.proguard.ha.d(com.tencent.bugly.proguard.ha.a(betaGrayStrategy3)));
                    com.tencent.bugly.proguard.aa.c("same strategyId:[new: %s] [current: %s] keep has popup times: %d, interval: %d", b2.r, betaGrayStrategy3.a.r, java.lang.Integer.valueOf(betaGrayStrategy2.b), java.lang.Long.valueOf(b2.n));
                }
                betaGrayStrategy2.a = b2;
                betaGrayStrategy2.f916e = java.lang.System.currentTimeMillis();
                if (betaGrayStrategy3 != null && !betaGrayStrategy3.a.k.f1165c.equals(b2.k.f1165c)) {
                    if (this.f919c == null) {
                        com.tencent.bugly.beta.download.DownloadTask downloadTaskA = com.tencent.bugly.beta.global.e.b.s.a(betaGrayStrategy3.a.k.f1165c, com.tencent.bugly.beta.global.e.b.w.getAbsolutePath(), null, null);
                        this.f919c = downloadTaskA;
                        downloadTaskA.setDownloadType(1);
                        this.f919c.delete(true);
                        for (java.io.File file : com.tencent.bugly.beta.global.e.b.w.listFiles()) {
                            if (!file.delete()) {
                                com.tencent.bugly.proguard.aa.b("cannot deleteCache file:%s", file.getAbsolutePath());
                            }
                        }
                    } else {
                        com.tencent.bugly.beta.download.BetaReceiver.netListeners.remove(this.f919c.getDownloadUrl());
                        this.f919c.delete(true);
                    }
                    this.f919c = null;
                }
                a(betaGrayStrategy2);
                com.tencent.bugly.proguard.aa.c("onUpgradeReceived: %s [type: %d]", b2, java.lang.Integer.valueOf(b2.l));
                com.tencent.bugly.proguard.C0256p.a.a(new com.tencent.bugly.proguard.C0260z("rcv", java.lang.System.currentTimeMillis(), (byte) 0, 0L, b2.j, b2.r, b2.u, null));
                betaGrayStrategy = betaGrayStrategy2;
            }
        }
        return betaGrayStrategy;
    }

    public void a(com.tencent.bugly.proguard.wa waVar) {
        com.tencent.bugly.beta.global.e eVar = com.tencent.bugly.beta.global.e.b;
        if (eVar.H == null) {
            eVar.H = new com.tencent.bugly.beta.upgrade.BetaUploadStrategy();
        }
        if (waVar != null) {
            com.tencent.bugly.beta.upgrade.BetaUploadStrategy betaUploadStrategy = com.tencent.bugly.beta.global.e.b.H;
            long j = betaUploadStrategy.b;
            long j2 = waVar.k;
            if (j == j2) {
                return;
            }
            betaUploadStrategy.b = j2;
            com.tencent.bugly.proguard.wa waVar2 = betaUploadStrategy.a;
            waVar2.f1162e = waVar.f1162e;
            waVar2.f1163f = waVar.f1163f;
            waVar2.k = j2;
            if (com.tencent.bugly.proguard.ha.c(waVar.f1164g)) {
                com.tencent.bugly.beta.global.e.b.H.a.f1164g = waVar.f1164g;
            }
            if (com.tencent.bugly.proguard.ha.c(waVar.h)) {
                com.tencent.bugly.beta.global.e.b.H.a.h = waVar.h;
            }
            com.tencent.bugly.proguard.va vaVar = waVar.i;
            if (vaVar != null && !android.text.TextUtils.isEmpty(vaVar.a)) {
                com.tencent.bugly.beta.global.e.b.H.a.i.a = waVar.i.a;
            }
            java.util.Map<java.lang.String, java.lang.String> map = waVar.j;
            if (map != null && map.size() > 0) {
                com.tencent.bugly.beta.global.e.b.H.a.j = waVar.j;
            }
            if (com.tencent.bugly.proguard.ha.c(waVar.l)) {
                com.tencent.bugly.beta.global.e.b.H.a.l = waVar.l;
            }
            if (com.tencent.bugly.proguard.ha.c(waVar.m)) {
                com.tencent.bugly.beta.global.e.b.H.a.m = waVar.m;
            }
            com.tencent.bugly.beta.global.a.a("us.bch", com.tencent.bugly.beta.global.e.b.H);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0087 A[Catch: all -> 0x0187, TryCatch #0 {, blocks: (B:5:0x001a, B:9:0x002b, B:44:0x0082, B:46:0x0087, B:48:0x008d, B:50:0x0091, B:53:0x0096, B:54:0x0098, B:57:0x00ae, B:93:0x0179, B:94:0x0185, B:89:0x016f, B:91:0x0173, B:61:0x00ba, B:62:0x00bb, B:64:0x00c3, B:65:0x00c7, B:83:0x0160, B:85:0x0166, B:13:0x0038, B:15:0x0042, B:17:0x004c, B:20:0x0052, B:22:0x0056, B:37:0x0074, B:39:0x0078, B:26:0x0061, B:30:0x0068, B:55:0x0099, B:56:0x00ad, B:68:0x00f7, B:70:0x00fb, B:72:0x0109, B:74:0x0111, B:76:0x0118, B:78:0x0127, B:80:0x013e), top: B:99:0x001a, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00c3 A[Catch: all -> 0x0187, TryCatch #0 {, blocks: (B:5:0x001a, B:9:0x002b, B:44:0x0082, B:46:0x0087, B:48:0x008d, B:50:0x0091, B:53:0x0096, B:54:0x0098, B:57:0x00ae, B:93:0x0179, B:94:0x0185, B:89:0x016f, B:91:0x0173, B:61:0x00ba, B:62:0x00bb, B:64:0x00c3, B:65:0x00c7, B:83:0x0160, B:85:0x0166, B:13:0x0038, B:15:0x0042, B:17:0x004c, B:20:0x0052, B:22:0x0056, B:37:0x0074, B:39:0x0078, B:26:0x0061, B:30:0x0068, B:55:0x0099, B:56:0x00ad, B:68:0x00f7, B:70:0x00fb, B:72:0x0109, B:74:0x0111, B:76:0x0118, B:78:0x0127, B:80:0x013e), top: B:99:0x001a, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x016b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x016d A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r17, boolean r18, int r19) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.beta.upgrade.d.a(boolean, boolean, int):void");
    }

    public void a(boolean z, boolean z2, int i, com.tencent.bugly.proguard.B b, java.lang.String str) {
        synchronized (this.l) {
            this.f919c = null;
            this.b = a(b);
            this.f923g = z;
            this.h = z2;
            if (this.f921e != null) {
                com.tencent.bugly.proguard.aa.c("你已放弃让SDK来处理策略", new java.lang.Object[0]);
                this.k = 3;
                if (this.b == null) {
                    com.tencent.bugly.proguard.aa.c("betaStrategy is null", new java.lang.Object[0]);
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(5, com.tencent.bugly.beta.Beta.strToastYourAreTheLatestVersion));
                    return;
                }
                if (this.b.a != null && !z && (this.b.f914c + this.b.a.n > java.lang.System.currentTimeMillis() || this.b.a.m - this.b.b <= 0)) {
                    return;
                }
                if (this.b != null && this.f919c == null) {
                    com.tencent.bugly.beta.download.DownloadTask downloadTaskA = com.tencent.bugly.beta.global.e.b.s.a(this.b.a.k.f1165c, com.tencent.bugly.beta.global.e.b.w.getAbsolutePath(), null, this.b.a.k.b);
                    this.f919c = downloadTaskA;
                    downloadTaskA.setDownloadType(1);
                }
                if (this.f919c == null) {
                    com.tencent.bugly.proguard.aa.c("用户自定义activity，创建task失败 [strategy:%s]", this.b);
                    this.b = null;
                    com.tencent.bugly.beta.global.a.a("app.upgrade.strategy.bch");
                } else {
                    this.f919c.addListener(this.n);
                }
                com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(16, this.f921e, java.lang.Integer.valueOf(i), this.b, java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(z2)));
            }
            if (i != 0 && z && !z2 && this.b == null) {
                if (this.f922f != null) {
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(18, this.f922f, -1, java.lang.Boolean.valueOf(z)));
                } else {
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(5, com.tencent.bugly.beta.Beta.strToastCheckUpgradeError));
                }
                return;
            }
            if (this.b != null && this.b.a != null) {
                if (this.f919c == null) {
                    this.f919c = c();
                }
                this.f919c.addListener(this.n);
                if (this.f922f != null) {
                    com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(18, this.f922f, 0, java.lang.Boolean.valueOf(z)));
                }
                if (this.f921e != null) {
                    return;
                }
                if (!z && this.b.a.l != 2) {
                    if (this.b.f915d && com.tencent.bugly.beta.global.e.b.h) {
                        if ((com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v) == 1 && com.tencent.bugly.beta.global.e.b.U) || (com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v) == 4 && com.tencent.bugly.beta.global.e.b.V)) {
                            a();
                            return;
                        } else {
                            if (!z2) {
                                b(z);
                            }
                            return;
                        }
                    }
                    if (this.b.f914c + this.b.a.n > java.lang.System.currentTimeMillis() || this.b.a.m - this.b.b <= 0 || this.b.a.l == 3) {
                        return;
                    }
                }
                if (((com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v) == 1 && com.tencent.bugly.beta.global.e.b.U) || (com.tencent.bugly.beta.global.a.a(com.tencent.bugly.beta.global.e.b.v) == 4 && com.tencent.bugly.beta.global.e.b.V)) && !z) {
                    a();
                } else if (!z2) {
                    b(z);
                }
            } else if (this.f922f != null) {
                com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(18, this.f922f, 1, java.lang.Boolean.valueOf(z)));
            } else if (z && !z2) {
                com.tencent.bugly.beta.utils.e.a(new com.tencent.bugly.beta.global.d(5, com.tencent.bugly.beta.Beta.strToastYourAreTheLatestVersion));
            }
        }
    }
}
