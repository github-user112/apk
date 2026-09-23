package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class S {
    public final java.text.SimpleDateFormat a;
    public final com.tencent.bugly.proguard.M b;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ java.util.List a;

        public a(java.util.List list) {
            this.a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.proguard.S.this.d(this.a);
        }
    }

    public static class b {
        public java.lang.String a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1088c;

        public java.lang.String a() {
            return this.f1088c;
        }

        public void a(long j) {
            this.b = j;
        }

        public void a(java.lang.String str) {
            this.f1088c = str;
        }

        public java.lang.String b() {
            return this.a;
        }

        public void b(java.lang.String str) {
            this.a = str;
        }

        public long c() {
            return this.b;
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("SLAData{uuid='");
            sbO.append(this.a);
            sbO.append('\'');
            sbO.append(", time=");
            sbO.append(this.b);
            sbO.append(", data='");
            sbO.append(this.f1088c);
            sbO.append('\'');
            sbO.append('}');
            return sbO.toString();
        }
    }

    public static class c {
        public java.lang.String a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public long f1089c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f1090d;

        /* renamed from: e, reason: collision with root package name */
        public long f1091e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.String f1092f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.String f1093g;

        public c() {
        }

        public c(java.lang.String str, java.lang.String str2, long j, boolean z, long j2, java.lang.String str3, java.lang.String str4) {
            this.a = str;
            this.b = str2;
            this.f1089c = j;
            this.f1090d = z;
            this.f1091e = j2;
            this.f1092f = str3;
            this.f1093g = str4;
        }

        public long a() {
            return this.f1091e;
        }

        public java.lang.String b() {
            return this.a;
        }

        public long c() {
            return this.f1089c;
        }

        public java.lang.String d() {
            return this.b;
        }

        public java.lang.String e() {
            return this.f1092f;
        }

        public java.lang.String f() {
            return this.f1093g;
        }

        public boolean g() {
            return this.f1090d;
        }
    }

    public static class d {
        public static final com.tencent.bugly.proguard.S a = new com.tencent.bugly.proguard.S(null);
    }

    public S() {
        this.a = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", java.util.Locale.US);
        this.b = new com.tencent.bugly.proguard.M();
    }

    public /* synthetic */ S(com.tencent.bugly.proguard.S.a aVar) {
        this();
    }

    public static com.tencent.bugly.proguard.S a() {
        return com.tencent.bugly.proguard.S.d.a;
    }

    private java.lang.String a(java.lang.String str, java.lang.Iterable<com.tencent.bugly.proguard.S.b> iterable) {
        java.util.Iterator<com.tencent.bugly.proguard.S.b> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (true) {
            sb.append("'");
            sb.append(it.next().a);
            sb.append("'");
            if (!it.hasNext()) {
                return sb.toString();
            }
            sb.append(str);
        }
    }

    private boolean a(long j) {
        return j < com.tencent.bugly.proguard.ha.b() - 604800000;
    }

    private com.tencent.bugly.proguard.S.b b(com.tencent.bugly.proguard.S.c cVar) {
        if (cVar == null || android.text.TextUtils.isEmpty(cVar.d())) {
            com.tencent.bugly.proguard.aa.e("sla convert event is null", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        if (aVarN == null) {
            com.tencent.bugly.proguard.aa.e("sla convert failed because ComInfoManager is null", new java.lang.Object[0]);
            return null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("&app_version=");
        sbO.append(aVarN.F);
        sbO.append("&app_name=");
        sbO.append(aVarN.H);
        sbO.append("&app_bundle_id=");
        sbO.append(aVarN.f967g);
        sbO.append("&client_type=android&user_id=");
        sbO.append(aVarN.A());
        sbO.append("&sdk_version=");
        sbO.append(aVarN.l);
        sbO.append("&event_code=");
        sbO.append(cVar.d());
        sbO.append("&event_result=");
        sbO.append(cVar.g() ? 1 : 0);
        sbO.append("&event_time=");
        sbO.append(this.a.format(new java.util.Date(cVar.c())));
        sbO.append("&event_cost=");
        sbO.append(cVar.a());
        sbO.append("&device_id=");
        sbO.append(aVarN.k());
        sbO.append("&debug=");
        sbO.append(aVarN.ba ? 1 : 0);
        sbO.append("&param_0=");
        sbO.append(cVar.e());
        sbO.append("&param_1=");
        sbO.append(cVar.b());
        sbO.append("&param_2=");
        sbO.append(aVarN.ka ? "rqd" : "ext");
        sbO.append("&param_4=");
        sbO.append(aVarN.e());
        java.lang.String string = sbO.toString();
        if (!android.text.TextUtils.isEmpty(cVar.f1093g)) {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(string, "&param_3=");
            sbQ.append(cVar.f1093g);
            string = sbQ.toString();
        }
        com.tencent.bugly.proguard.aa.a("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.b(), cVar.d(), java.lang.Long.valueOf(cVar.c()), java.lang.Boolean.valueOf(cVar.g()), java.lang.Long.valueOf(cVar.a()), cVar.e(), cVar.f());
        java.lang.String str = cVar.b() + "-" + cVar.d();
        com.tencent.bugly.proguard.S.b bVar = new com.tencent.bugly.proguard.S.b();
        bVar.b(str);
        bVar.a(cVar.c());
        bVar.a(string);
        return bVar;
    }

    private void b(java.util.List<com.tencent.bugly.proguard.S.b> list) {
        if (list == null || list.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("sla batch delete list is null", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("sla batch delete list size:%s", java.lang.Integer.valueOf(list.size()));
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("_id in (");
            sb.append(a(",", list));
            sb.append(")");
            java.lang.String string = sb.toString();
            com.tencent.bugly.proguard.aa.a("sla batch delete where:%s", string);
            com.tencent.bugly.proguard.J.a().a("t_sla", string, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.a(th);
        }
    }

    private java.util.List<com.tencent.bugly.proguard.S.b> c() {
        android.database.Cursor cursorA = com.tencent.bugly.proguard.J.a().a(false, "t_sla", new java.lang.String[]{com.umeng.analytics.pro.am.f1240d, "_tm", "_dt"}, (java.lang.String) null, (java.lang.String[]) null, (java.lang.String) null, (java.lang.String) null, "_tm", "30", (com.tencent.bugly.proguard.I) null, true);
        if (cursorA == null) {
            return null;
        }
        if (cursorA.getCount() < 1) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (cursorA.moveToNext()) {
            try {
                com.tencent.bugly.proguard.S.b bVar = new com.tencent.bugly.proguard.S.b();
                bVar.b(cursorA.getString(cursorA.getColumnIndex(com.umeng.analytics.pro.am.f1240d)));
                bVar.a(cursorA.getLong(cursorA.getColumnIndex("_tm")));
                bVar.a(cursorA.getString(cursorA.getColumnIndex("_dt")));
                com.tencent.bugly.proguard.aa.a(bVar.toString(), new java.lang.Object[0]);
                arrayList.add(bVar);
            } finally {
                try {
                    return arrayList;
                } finally {
                }
            }
        }
        return arrayList;
    }

    private void c(java.util.List<com.tencent.bugly.proguard.S.b> list) {
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
            com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.proguard.S.a(list));
        } else {
            d(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(java.util.List<com.tencent.bugly.proguard.S.b> list) {
        if (list == null || list.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("sla batch report data is empty", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("sla batch report list size:%s", java.lang.Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<com.tencent.bugly.proguard.S.b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        android.util.Pair<java.lang.Integer, java.lang.String> pairA = this.b.a(arrayList);
        com.tencent.bugly.proguard.aa.a("sla batch report result, rspCode:%s rspMsg:%s", pairA.first, pairA.second);
        if (((java.lang.Integer) pairA.first).intValue() == 200) {
            b(list);
        }
    }

    private void e(java.util.List<com.tencent.bugly.proguard.S.b> list) {
        for (com.tencent.bugly.proguard.S.b bVar : list) {
            com.tencent.bugly.proguard.aa.a("sla save id:%s time:%s msg:%s", bVar.b(), java.lang.Long.valueOf(bVar.c()), bVar.a());
            try {
                android.content.ContentValues contentValues = new android.content.ContentValues();
                contentValues.put(com.umeng.analytics.pro.am.f1240d, bVar.b());
                contentValues.put("_tm", java.lang.Long.valueOf(bVar.c()));
                contentValues.put("_dt", bVar.a());
                com.tencent.bugly.proguard.J.a().a("t_sla", contentValues, (com.tencent.bugly.proguard.I) null, true);
            } catch (java.lang.Throwable th) {
                com.tencent.bugly.proguard.aa.a(th);
            }
        }
    }

    public void a(com.tencent.bugly.proguard.S.c cVar) {
        if (cVar == null || android.text.TextUtils.isEmpty(cVar.d())) {
            com.tencent.bugly.proguard.aa.e("sla report event is null", new java.lang.Object[0]);
        } else {
            com.tencent.bugly.proguard.aa.a("sla report single event", new java.lang.Object[0]);
            a(java.util.Collections.singletonList(cVar));
        }
    }

    public void a(java.util.List<com.tencent.bugly.proguard.S.c> list) {
        if (list == null || list.isEmpty()) {
            com.tencent.bugly.proguard.aa.e("sla batch report event is null", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("sla batch report event size:%s", java.lang.Integer.valueOf(list.size()));
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.Iterator<com.tencent.bugly.proguard.S.c> it = list.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.proguard.S.b bVarB = b(it.next());
            if (bVarB != null) {
                arrayList.add(bVarB);
            }
        }
        e(arrayList);
        c(arrayList);
    }

    public void b() {
        java.util.List<com.tencent.bugly.proguard.S.b> listC = c();
        if (listC == null || listC.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("sla local data is null", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("sla load local data list size:%s", java.lang.Integer.valueOf(listC.size()));
        java.util.Iterator<com.tencent.bugly.proguard.S.b> it = listC.iterator();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (it.hasNext()) {
            com.tencent.bugly.proguard.S.b next = it.next();
            if (a(next.c())) {
                com.tencent.bugly.proguard.aa.a("sla local data is expired:%s", next.a());
                arrayList.add(next);
                it.remove();
            }
        }
        b(arrayList);
        c(listC);
    }
}
