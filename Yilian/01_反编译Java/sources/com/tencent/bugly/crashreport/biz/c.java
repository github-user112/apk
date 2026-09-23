package com.tencent.bugly.crashreport.biz;

/* loaded from: classes.dex */
public class c {
    public android.content.Context a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public int f953c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f954d;

    public class a implements com.tencent.bugly.proguard.T {
        public final /* synthetic */ java.util.List a;

        public a(java.util.List list) {
            this.a = list;
        }

        @Override // com.tencent.bugly.proguard.T
        public void a(int i) {
        }

        @Override // com.tencent.bugly.proguard.T
        public void a(int i, com.tencent.bugly.proguard.ua uaVar, long j, long j2, boolean z, java.lang.String str) {
            if (z) {
                com.tencent.bugly.proguard.aa.a("[UserInfo] Successfully uploaded user info.", new java.lang.Object[0]);
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                for (com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean : this.a) {
                    userInfoBean.f951f = jCurrentTimeMillis;
                    com.tencent.bugly.crashreport.biz.c.this.a(userInfoBean, true);
                }
            }
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.tencent.bugly.crashreport.biz.c.this.d();
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.b(th);
            }
        }
    }

    /* renamed from: com.tencent.bugly.crashreport.biz.c$c, reason: collision with other inner class name */
    public class RunnableC0007c implements java.lang.Runnable {
        public boolean a;
        public com.tencent.bugly.crashreport.biz.UserInfoBean b;

        public RunnableC0007c(com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean, boolean z) {
            this.b = userInfoBean;
            this.a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.b != null) {
                    com.tencent.bugly.crashreport.biz.c.this.b(this.b);
                    com.tencent.bugly.proguard.aa.a("[UserInfo] Record user info.", new java.lang.Object[0]);
                    com.tencent.bugly.crashreport.biz.c.this.a(this.b, false);
                }
                if (this.a) {
                    com.tencent.bugly.crashreport.biz.c.this.b();
                }
            } catch (java.lang.Throwable th) {
                if (com.tencent.bugly.proguard.aa.b(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    public class d implements java.lang.Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            if (jCurrentTimeMillis < com.tencent.bugly.crashreport.biz.c.this.b) {
                com.tencent.bugly.proguard.Z.c().a(com.tencent.bugly.crashreport.biz.c.this.new d(), (com.tencent.bugly.crashreport.biz.c.this.b - jCurrentTimeMillis) + 5000);
            } else {
                com.tencent.bugly.crashreport.biz.c.this.a(3, false, 0L);
                com.tencent.bugly.crashreport.biz.c.this.a();
            }
        }
    }

    public class e implements java.lang.Runnable {
        public long a;

        public e(long j) {
            this.a = 21600000L;
            this.a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.biz.c.this.b();
            com.tencent.bugly.crashreport.biz.c.this.b(this.a);
        }
    }

    public c(android.content.Context context, boolean z) {
        this.f954d = true;
        this.a = context;
        this.f954d = z;
    }

    public static int a(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list, long j) {
        int i;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        int i2 = 0;
        for (com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean : list) {
            if (userInfoBean.f950e > jCurrentTimeMillis - j && ((i = userInfoBean.b) == 1 || i == 4 || i == 3)) {
                i2++;
            }
        }
        return i2;
    }

    public static com.tencent.bugly.crashreport.biz.UserInfoBean a(android.content.Context context, int i) {
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
        com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean = new com.tencent.bugly.crashreport.biz.UserInfoBean();
        userInfoBean.b = i;
        userInfoBean.f948c = aVarA.h;
        userInfoBean.f949d = aVarA.A();
        userInfoBean.f950e = java.lang.System.currentTimeMillis();
        userInfoBean.f951f = -1L;
        userInfoBean.n = aVarA.F;
        userInfoBean.o = i != 1 ? 0 : 1;
        userInfoBean.l = aVarA.E();
        userInfoBean.m = aVarA.W;
        userInfoBean.f952g = aVarA.X;
        userInfoBean.h = aVarA.Y;
        userInfoBean.i = aVarA.Z;
        userInfoBean.k = aVarA.aa;
        userInfoBean.r = aVarA.h();
        userInfoBean.s = aVarA.g();
        userInfoBean.p = aVarA.C();
        userInfoBean.q = aVarA.v();
        return userInfoBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean, boolean z) {
        java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> listA;
        if (userInfoBean == null) {
            return;
        }
        if (!z && userInfoBean.b != 1 && (listA = a(com.tencent.bugly.crashreport.common.info.a.a(this.a).h)) != null && listA.size() >= 20) {
            com.tencent.bugly.proguard.aa.c("[UserInfo] There are too many user info in local: %d", java.lang.Integer.valueOf(listA.size()));
            return;
        }
        long jA = com.tencent.bugly.proguard.J.a().a("t_ui", a(userInfoBean), (com.tencent.bugly.proguard.I) null, true);
        if (jA >= 0) {
            com.tencent.bugly.proguard.aa.a("[Database] insert %s success with ID: %d", "t_ui", java.lang.Long.valueOf(jA));
            userInfoBean.a = jA;
        }
    }

    public static void a(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list, java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i = 0;
            while (i < list.size() - 1) {
                int i2 = i + 1;
                for (int i3 = i2; i3 < list.size(); i3++) {
                    if (list.get(i).f950e > list.get(i3).f950e) {
                        com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean = list.get(i);
                        list.set(i, list.get(i3));
                        list.set(i3, userInfoBean);
                    }
                }
                i = i2;
            }
            for (int i4 = 0; i4 < size; i4++) {
                list2.add(list.get(i4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean) {
        com.tencent.bugly.crashreport.common.info.a aVarN;
        if (userInfoBean == null || (aVarN = com.tencent.bugly.crashreport.common.info.a.n()) == null) {
            return;
        }
        userInfoBean.j = aVarN.w();
    }

    private void b(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list) {
        com.tencent.bugly.proguard.ya yaVarA = com.tencent.bugly.proguard.N.a(list, this.f953c == 1 ? 1 : 2);
        if (yaVarA == null) {
            com.tencent.bugly.proguard.aa.e("[UserInfo] Failed to create UserInfoPackage.", new java.lang.Object[0]);
            return;
        }
        byte[] bArrA = com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) yaVarA);
        if (bArrA == null) {
            com.tencent.bugly.proguard.aa.e("[UserInfo] Failed to encode data.", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.ta taVarA = com.tencent.bugly.proguard.N.a(this.a, 840, bArrA);
        if (taVarA == null) {
            com.tencent.bugly.proguard.aa.e("[UserInfo] Request package is null.", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.crashreport.biz.c.a aVar = new com.tencent.bugly.crashreport.biz.c.a(list);
        com.tencent.bugly.proguard.W.a().a(1001, taVarA, com.tencent.bugly.crashreport.common.strategy.c.b().c().q, com.tencent.bugly.crashreport.common.strategy.StrategyBean.a, aVar, this.f953c == 1);
    }

    public static void b(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list, java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list2) {
        java.util.Iterator<com.tencent.bugly.crashreport.biz.UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.crashreport.biz.UserInfoBean next = it.next();
            if (next.f951f != -1) {
                it.remove();
                if (next.f950e < com.tencent.bugly.proguard.ha.b()) {
                    list2.add(next);
                }
            }
        }
    }

    private boolean c() {
        com.tencent.bugly.proguard.W wA;
        com.tencent.bugly.crashreport.common.strategy.c cVarB;
        if (!this.f954d || (wA = com.tencent.bugly.proguard.W.a()) == null || (cVarB = com.tencent.bugly.crashreport.common.strategy.c.b()) == null) {
            return false;
        }
        return !cVarB.d() || wA.a(1001);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004a A[Catch: all -> 0x0075, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0009, B:9:0x001e, B:11:0x002f, B:14:0x0044, B:16:0x004a, B:18:0x004f, B:21:0x0056, B:24:0x006c, B:12:0x003e), top: B:30:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void d() {
        /*
            r6 = this;
            monitor-enter(r6)
            boolean r0 = r6.c()     // Catch: java.lang.Throwable -> L75
            if (r0 != 0) goto L9
            monitor-exit(r6)
            return
        L9:
            android.content.Context r0 = r6.a     // Catch: java.lang.Throwable -> L75
            com.tencent.bugly.crashreport.common.info.a r0 = com.tencent.bugly.crashreport.common.info.a.a(r0)     // Catch: java.lang.Throwable -> L75
            java.lang.String r0 = r0.h     // Catch: java.lang.Throwable -> L75
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L75
            r1.<init>()     // Catch: java.lang.Throwable -> L75
            java.util.List r0 = r6.a(r0)     // Catch: java.lang.Throwable -> L75
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L3e
            a(r0, r1)     // Catch: java.lang.Throwable -> L75
            b(r0, r1)     // Catch: java.lang.Throwable -> L75
            r4 = 600000(0x927c0, double:2.964394E-318)
            int r4 = a(r0, r4)     // Catch: java.lang.Throwable -> L75
            r5 = 15
            if (r4 <= r5) goto L43
            java.lang.Object[] r5 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L75
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L75
            r5[r3] = r4     // Catch: java.lang.Throwable -> L75
            java.lang.String r4 = "[UserInfo] Upload user info too many times in 10 min: %d"
            com.tencent.bugly.proguard.aa.e(r4, r5)     // Catch: java.lang.Throwable -> L75
            r4 = 0
            goto L44
        L3e:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L75
            r0.<init>()     // Catch: java.lang.Throwable -> L75
        L43:
            r4 = 1
        L44:
            int r5 = r1.size()     // Catch: java.lang.Throwable -> L75
            if (r5 <= 0) goto L4d
            r6.a(r1)     // Catch: java.lang.Throwable -> L75
        L4d:
            if (r4 == 0) goto L6c
            int r1 = r0.size()     // Catch: java.lang.Throwable -> L75
            if (r1 != 0) goto L56
            goto L6c
        L56:
            java.lang.Object[] r1 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L75
            int r2 = r0.size()     // Catch: java.lang.Throwable -> L75
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L75
            r1[r3] = r2     // Catch: java.lang.Throwable -> L75
            java.lang.String r2 = "[UserInfo] Upload user info(size: %d)"
            com.tencent.bugly.proguard.aa.a(r2, r1)     // Catch: java.lang.Throwable -> L75
            r6.b(r0)     // Catch: java.lang.Throwable -> L75
            monitor-exit(r6)
            return
        L6c:
            java.lang.Object[] r0 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L75
            java.lang.String r1 = "[UserInfo] There is no user info in local database."
            com.tencent.bugly.proguard.aa.a(r1, r0)     // Catch: java.lang.Throwable -> L75
            monitor-exit(r6)
            return
        L75:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.biz.c.d():void");
    }

    public android.content.ContentValues a(com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            if (userInfoBean.a > 0) {
                contentValues.put(com.umeng.analytics.pro.am.f1240d, java.lang.Long.valueOf(userInfoBean.a));
            }
            contentValues.put("_tm", java.lang.Long.valueOf(userInfoBean.f950e));
            contentValues.put("_ut", java.lang.Long.valueOf(userInfoBean.f951f));
            contentValues.put(com.umeng.analytics.pro.am.f1241e, java.lang.Integer.valueOf(userInfoBean.b));
            contentValues.put("_pc", userInfoBean.f948c);
            contentValues.put("_dt", com.tencent.bugly.proguard.ha.a(userInfoBean));
            return contentValues;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public com.tencent.bugly.crashreport.biz.UserInfoBean a(android.database.Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
            com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean = (com.tencent.bugly.crashreport.biz.UserInfoBean) com.tencent.bugly.proguard.ha.a(blob, com.tencent.bugly.crashreport.biz.UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.a = j;
            }
            return userInfoBean;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> a(java.lang.String str) {
        java.lang.Throwable th;
        android.database.Cursor cursorA;
        java.lang.String string;
        try {
            if (com.tencent.bugly.proguard.ha.b(str)) {
                string = null;
            } else {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("_pc = '");
                sb.append(str);
                sb.append("'");
                string = sb.toString();
            }
            cursorA = com.tencent.bugly.proguard.J.a().a("t_ui", null, string, null, null, true);
            if (cursorA == null) {
                return null;
            }
            try {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                java.util.ArrayList arrayList = new java.util.ArrayList();
                while (cursorA.moveToNext()) {
                    com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBeanA = a(cursorA);
                    if (userInfoBeanA != null) {
                        arrayList.add(userInfoBeanA);
                    } else {
                        try {
                            long j = cursorA.getLong(cursorA.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
                            sb2.append(" or ");
                            sb2.append(com.umeng.analytics.pro.am.f1240d);
                            sb2.append(" = ");
                            sb2.append(j);
                        } catch (java.lang.Throwable unused) {
                            com.tencent.bugly.proguard.aa.e("[Database] unknown id.", new java.lang.Object[0]);
                        }
                    }
                }
                java.lang.String string2 = sb2.toString();
                if (string2.length() > 0) {
                    int iA = com.tencent.bugly.proguard.J.a().a("t_ui", string2.substring(4), (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
                    java.lang.Object[] objArr = new java.lang.Object[2];
                    objArr[0] = "t_ui";
                    objArr[1] = java.lang.Integer.valueOf(iA);
                    com.tencent.bugly.proguard.aa.e("[Database] deleted %s error data %d", objArr);
                }
                cursorA.close();
                return arrayList;
            } catch (java.lang.Throwable th2) {
                th = th2;
                try {
                    if (!com.tencent.bugly.proguard.aa.b(th)) {
                        th.printStackTrace();
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return null;
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }

    public void a() {
        this.b = com.tencent.bugly.proguard.ha.b() + 86400000;
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.biz.c.d(), (this.b - java.lang.System.currentTimeMillis()) + 5000);
    }

    public void a(int i, boolean z, long j) {
        com.tencent.bugly.crashreport.common.strategy.c cVarB = com.tencent.bugly.crashreport.common.strategy.c.b();
        if (cVarB != null && !cVarB.c().f973g && i != 1 && i != 3) {
            com.tencent.bugly.proguard.aa.b("UserInfo is disable", new java.lang.Object[0]);
            return;
        }
        if (i == 1 || i == 3) {
            this.f953c++;
        }
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.biz.c.RunnableC0007c(a(this.a, i), z), j);
    }

    public void a(long j) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.biz.c.RunnableC0007c(null, true), j);
    }

    public void a(java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (int i = 0; i < list.size() && i < 50; i++) {
            com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean = list.get(i);
            sb.append(" or ");
            sb.append(com.umeng.analytics.pro.am.f1240d);
            sb.append(" = ");
            sb.append(userInfoBean.a);
        }
        java.lang.String string = sb.toString();
        if (string.length() > 0) {
            string = string.substring(4);
        }
        java.lang.String str = string;
        sb.setLength(0);
        try {
            int iA = com.tencent.bugly.proguard.J.a().a("t_ui", str, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = "t_ui";
            objArr[1] = java.lang.Integer.valueOf(iA);
            com.tencent.bugly.proguard.aa.a("[Database] deleted %s data %d", objArr);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public void b() {
        com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
        if (zC != null) {
            zC.a(new com.tencent.bugly.crashreport.biz.c.b());
        }
    }

    public void b(long j) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.biz.c.e(j), j);
    }
}
