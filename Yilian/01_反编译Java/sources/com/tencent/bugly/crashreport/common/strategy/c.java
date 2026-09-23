package com.tencent.bugly.crashreport.common.strategy;

/* loaded from: classes.dex */
public class c {
    public static int a = 1000;
    public static com.tencent.bugly.crashreport.common.strategy.c b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f974c;

    /* renamed from: d, reason: collision with root package name */
    public final java.util.List<com.tencent.bugly.a> f975d;

    /* renamed from: e, reason: collision with root package name */
    public final com.tencent.bugly.proguard.Z f976e;

    /* renamed from: f, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.strategy.StrategyBean f977f;

    /* renamed from: g, reason: collision with root package name */
    public com.tencent.bugly.crashreport.common.strategy.StrategyBean f978g = null;
    public android.content.Context h;

    public class a extends java.lang.Thread {
        public a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean;
            java.lang.String str;
            try {
                java.util.Map<java.lang.String, byte[]> mapA = com.tencent.bugly.proguard.J.a().a(com.tencent.bugly.crashreport.common.strategy.c.a, (com.tencent.bugly.proguard.I) null, true);
                if (mapA != null) {
                    byte[] bArr = mapA.get("device");
                    byte[] bArr2 = mapA.get("gateway");
                    if (bArr != null) {
                        com.tencent.bugly.crashreport.common.info.a.a(com.tencent.bugly.crashreport.common.strategy.c.this.h).h(new java.lang.String(bArr));
                    }
                    if (bArr2 != null) {
                        com.tencent.bugly.crashreport.common.info.a.a(com.tencent.bugly.crashreport.common.strategy.c.this.h).g(new java.lang.String(bArr2));
                    }
                }
                com.tencent.bugly.crashreport.common.strategy.c.this.f978g = com.tencent.bugly.crashreport.common.strategy.c.this.e();
                if (com.tencent.bugly.crashreport.common.strategy.c.this.f978g != null) {
                    if (com.tencent.bugly.proguard.ha.b(com.tencent.bugly.crashreport.common.strategy.c.f974c) || !com.tencent.bugly.proguard.ha.c(com.tencent.bugly.crashreport.common.strategy.c.f974c)) {
                        com.tencent.bugly.crashreport.common.strategy.c.this.f978g.q = com.tencent.bugly.crashreport.common.strategy.StrategyBean.a;
                        strategyBean = com.tencent.bugly.crashreport.common.strategy.c.this.f978g;
                        str = com.tencent.bugly.crashreport.common.strategy.StrategyBean.b;
                    } else {
                        com.tencent.bugly.crashreport.common.strategy.c.this.f978g.q = com.tencent.bugly.crashreport.common.strategy.c.f974c;
                        strategyBean = com.tencent.bugly.crashreport.common.strategy.c.this.f978g;
                        str = com.tencent.bugly.crashreport.common.strategy.c.f974c;
                    }
                    strategyBean.r = str;
                }
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
            com.tencent.bugly.crashreport.common.strategy.c cVar = com.tencent.bugly.crashreport.common.strategy.c.this;
            cVar.a(cVar.f978g, false);
        }
    }

    public c(android.content.Context context, java.util.List<com.tencent.bugly.a> list) {
        this.h = context;
        a(context);
        this.f977f = new com.tencent.bugly.crashreport.common.strategy.StrategyBean();
        this.f975d = list;
        this.f976e = com.tencent.bugly.proguard.Z.c();
    }

    public static synchronized com.tencent.bugly.crashreport.common.strategy.c a(android.content.Context context, java.util.List<com.tencent.bugly.a> list) {
        if (b == null) {
            b = new com.tencent.bugly.crashreport.common.strategy.c(context, list);
        }
        return b;
    }

    public static void a(android.content.Context context) {
        java.lang.String str;
        if (com.tencent.bugly.crashreport.common.info.a.a(context) != null) {
            java.lang.String str2 = com.tencent.bugly.crashreport.common.info.a.a(context).fa;
            if ("oversea".equals(str2)) {
                str = "https://astat.bugly.qcloud.com/rqd/async";
            } else if (!"na_https".equals(str2)) {
                return;
            } else {
                str = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
            com.tencent.bugly.crashreport.common.strategy.StrategyBean.a = str;
            com.tencent.bugly.crashreport.common.strategy.StrategyBean.b = str;
        }
    }

    public static void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, com.tencent.bugly.proguard.wa waVar) {
        com.tencent.bugly.proguard.va vaVar = waVar.i;
        if (vaVar == null || com.tencent.bugly.proguard.ha.b(vaVar.a)) {
            return;
        }
        strategyBean.s = waVar.i.a;
    }

    public static void a(java.lang.String str) {
        if (com.tencent.bugly.proguard.ha.b(str) || !com.tencent.bugly.proguard.ha.c(str)) {
            com.tencent.bugly.proguard.aa.e("URL user set is invalid.", new java.lang.Object[0]);
        } else {
            f974c = str;
        }
    }

    public static synchronized com.tencent.bugly.crashreport.common.strategy.c b() {
        return b;
    }

    public static void b(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, com.tencent.bugly.proguard.wa waVar) {
        if (com.tencent.bugly.proguard.ha.b(f974c) || !com.tencent.bugly.proguard.ha.c(f974c)) {
            if (com.tencent.bugly.proguard.ha.c(waVar.f1164g)) {
                com.tencent.bugly.proguard.aa.a("[Strategy] Upload url changes to %s", waVar.f1164g);
                strategyBean.q = waVar.f1164g;
            }
            if (com.tencent.bugly.proguard.ha.c(waVar.h)) {
                com.tencent.bugly.proguard.aa.a("[Strategy] Exception upload url changes to %s", waVar.h);
                strategyBean.r = waVar.h;
            }
        }
    }

    public static void c(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, com.tencent.bugly.proguard.wa waVar) throws java.lang.NumberFormatException {
        java.util.Map<java.lang.String, java.lang.String> map;
        if (strategyBean == null || waVar == null || (map = waVar.j) == null || map.size() <= 0) {
            return;
        }
        java.util.Map<java.lang.String, java.lang.String> map2 = waVar.j;
        strategyBean.t = map2;
        java.lang.String str = map2.get("B11");
        strategyBean.i = str != null && str.equals("1");
        java.lang.String str2 = waVar.j.get("B3");
        if (str2 != null) {
            strategyBean.w = java.lang.Long.parseLong(str2);
        }
        long j = waVar.o;
        strategyBean.p = j;
        strategyBean.v = j;
        java.lang.String str3 = waVar.j.get("B27");
        if (str3 != null && str3.length() > 0) {
            try {
                int i = java.lang.Integer.parseInt(str3);
                if (i > 0) {
                    strategyBean.u = i;
                }
            } catch (java.lang.Exception e2) {
                if (!com.tencent.bugly.proguard.aa.b(e2)) {
                    e2.printStackTrace();
                }
            }
        }
        java.lang.String str4 = waVar.j.get("B25");
        strategyBean.k = str4 != null && str4.equals("1");
    }

    public void a(long j) {
        this.f976e.a(new com.tencent.bugly.crashreport.common.strategy.c.a(), j);
    }

    public void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, boolean z) {
        com.tencent.bugly.proguard.aa.a("[Strategy] Notify %s", com.tencent.bugly.crashreport.biz.e.class.getName());
        com.tencent.bugly.crashreport.biz.e.a(strategyBean, z);
        for (com.tencent.bugly.a aVar : this.f975d) {
            try {
                com.tencent.bugly.proguard.aa.a("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public void a(com.tencent.bugly.proguard.wa waVar) throws java.lang.NumberFormatException {
        if (waVar == null) {
            return;
        }
        com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean = this.f978g;
        if (strategyBean == null || waVar.k != strategyBean.o) {
            com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean2 = new com.tencent.bugly.crashreport.common.strategy.StrategyBean();
            strategyBean2.f972f = waVar.f1161d;
            strategyBean2.h = waVar.f1163f;
            strategyBean2.f973g = waVar.f1162e;
            b(strategyBean2, waVar);
            a(strategyBean2, waVar);
            long j = waVar.k;
            if (j != 0) {
                strategyBean2.o = j;
            }
            c(strategyBean2, waVar);
            com.tencent.bugly.proguard.aa.c("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", java.lang.Boolean.valueOf(strategyBean2.f972f), java.lang.Boolean.valueOf(strategyBean2.h), java.lang.Boolean.valueOf(strategyBean2.f973g), java.lang.Boolean.valueOf(strategyBean2.i), java.lang.Boolean.valueOf(strategyBean2.j), java.lang.Boolean.valueOf(strategyBean2.m), java.lang.Boolean.valueOf(strategyBean2.n), java.lang.Long.valueOf(strategyBean2.p), java.lang.Boolean.valueOf(strategyBean2.k), java.lang.Long.valueOf(strategyBean2.o));
            this.f978g = strategyBean2;
            if (!com.tencent.bugly.proguard.ha.c(waVar.f1164g)) {
                com.tencent.bugly.proguard.aa.a("[Strategy] download url is null", new java.lang.Object[0]);
                this.f978g.q = "";
            }
            if (!com.tencent.bugly.proguard.ha.c(waVar.h)) {
                com.tencent.bugly.proguard.aa.a("[Strategy] download crashurl is null", new java.lang.Object[0]);
                this.f978g.r = "";
            }
            com.tencent.bugly.proguard.J.a().b(2);
            com.tencent.bugly.proguard.L l = new com.tencent.bugly.proguard.L();
            l.b = 2;
            l.a = strategyBean2.f970d;
            l.f1084e = strategyBean2.f971e;
            l.f1086g = com.tencent.bugly.proguard.ha.a(strategyBean2);
            com.tencent.bugly.proguard.J.a().c(l);
            a(strategyBean2, true);
        }
    }

    public com.tencent.bugly.crashreport.common.strategy.StrategyBean c() {
        com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean = this.f978g;
        if (strategyBean != null) {
            if (!com.tencent.bugly.proguard.ha.c(strategyBean.q)) {
                this.f978g.q = com.tencent.bugly.crashreport.common.strategy.StrategyBean.a;
            }
            if (!com.tencent.bugly.proguard.ha.c(this.f978g.r)) {
                this.f978g.r = com.tencent.bugly.crashreport.common.strategy.StrategyBean.b;
            }
            return this.f978g;
        }
        if (!com.tencent.bugly.proguard.ha.b(f974c) && com.tencent.bugly.proguard.ha.c(f974c)) {
            com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean2 = this.f977f;
            java.lang.String str = f974c;
            strategyBean2.q = str;
            strategyBean2.r = str;
        }
        return this.f977f;
    }

    public synchronized boolean d() {
        return this.f978g != null;
    }

    public com.tencent.bugly.crashreport.common.strategy.StrategyBean e() {
        byte[] bArr;
        java.util.List<com.tencent.bugly.proguard.L> listA = com.tencent.bugly.proguard.J.a().a(2);
        if (listA == null || listA.size() <= 0 || (bArr = listA.get(0).f1086g) == null) {
            return null;
        }
        return (com.tencent.bugly.crashreport.common.strategy.StrategyBean) com.tencent.bugly.proguard.ha.a(bArr, com.tencent.bugly.crashreport.common.strategy.StrategyBean.CREATOR);
    }
}
