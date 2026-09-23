package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class j {
    public static int a;
    public static final java.util.Map<java.lang.Integer, android.util.Pair<java.lang.String, java.lang.String>> b = new com.tencent.bugly.crashreport.crash.j.a();

    /* renamed from: c, reason: collision with root package name */
    public static final java.util.ArrayList<com.tencent.bugly.crashreport.crash.j.g> f1015c = new com.tencent.bugly.crashreport.crash.j.b();

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Map<java.lang.Integer, java.lang.Integer> f1016d = new com.tencent.bugly.crashreport.crash.j.c();

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.Map<java.lang.Integer, java.lang.String> f1017e = new com.tencent.bugly.crashreport.crash.j.d();

    /* renamed from: f, reason: collision with root package name */
    public static final java.util.Map<java.lang.Integer, java.lang.String> f1018f = new com.tencent.bugly.crashreport.crash.j.e();

    /* renamed from: g, reason: collision with root package name */
    public final android.content.Context f1019g;
    public final com.tencent.bugly.proguard.W h;
    public final com.tencent.bugly.proguard.J i;
    public final com.tencent.bugly.crashreport.common.strategy.c j;
    public com.tencent.bugly.crashreport.crash.r k;
    public com.tencent.bugly.BuglyStrategy.a l;

    public static class a extends java.util.HashMap<java.lang.Integer, android.util.Pair<java.lang.String, java.lang.String>> {
        public a() {
            put(3, new android.util.Pair("203", "103"));
            put(7, new android.util.Pair("208", "108"));
            put(0, new android.util.Pair("200", "100"));
            put(1, new android.util.Pair("201", "101"));
            put(2, new android.util.Pair("202", "102"));
            put(4, new android.util.Pair("204", "104"));
            put(6, new android.util.Pair("206", "106"));
            put(5, new android.util.Pair("207", "107"));
        }
    }

    public static class b extends java.util.ArrayList<com.tencent.bugly.crashreport.crash.j.g> {
        public b() {
            add(new com.tencent.bugly.crashreport.crash.j.h(null));
            add(new com.tencent.bugly.crashreport.crash.j.i(null));
            add(new com.tencent.bugly.crashreport.crash.j.C0010j(null));
            add(new com.tencent.bugly.crashreport.crash.j.k(null));
            add(new com.tencent.bugly.crashreport.crash.j.n(null));
            add(new com.tencent.bugly.crashreport.crash.j.o(null));
            add(new com.tencent.bugly.crashreport.crash.j.l(null));
            add(new com.tencent.bugly.crashreport.crash.j.m(null));
        }
    }

    public static class c extends java.util.HashMap<java.lang.Integer, java.lang.Integer> {
        public c() {
            put(3, 4);
            put(7, 7);
            put(2, 1);
            put(0, 0);
            put(1, 2);
            put(4, 3);
            put(5, 5);
            put(6, 6);
        }
    }

    public static class d extends java.util.HashMap<java.lang.Integer, java.lang.String> {
        public d() {
            put(3, "BuglyAnrCrash");
            put(0, "BuglyJavaCrash");
            put(1, "BuglyNativeCrash");
        }
    }

    public static class e extends java.util.HashMap<java.lang.Integer, java.lang.String> {
        public e() {
            put(3, "BuglyAnrCrashReport");
            put(0, "BuglyJavaCrashReport");
            put(1, "BuglyNativeCrashReport");
        }
    }

    public class f implements com.tencent.bugly.proguard.T {
        public final /* synthetic */ long a;
        public final /* synthetic */ java.util.List b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ boolean f1020c;

        public f(long j, java.util.List list, boolean z) {
            this.a = j;
            this.b = list;
            this.f1020c = z;
        }

        @Override // com.tencent.bugly.proguard.T
        public void a(int i) {
        }

        @Override // com.tencent.bugly.proguard.T
        public void a(int i, com.tencent.bugly.proguard.ua uaVar, long j, long j2, boolean z, java.lang.String str) {
            com.tencent.bugly.crashreport.crash.j.this.a((java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean>) this.b, z, java.lang.System.currentTimeMillis() - this.a, this.f1020c ? "realtime" : "cache", str);
            com.tencent.bugly.crashreport.crash.j.this.a(z, this.b);
        }
    }

    public static abstract class g {
        public final int a;

        public g(int i, com.tencent.bugly.crashreport.crash.j.a aVar) {
            this.a = i;
        }

        public abstract boolean a();
    }

    public static class h extends com.tencent.bugly.crashreport.crash.j.g {
        public h(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(3, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().j();
        }
    }

    public static class i extends com.tencent.bugly.crashreport.crash.j.g {
        public i(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(7, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return true;
        }
    }

    /* renamed from: com.tencent.bugly.crashreport.crash.j$j, reason: collision with other inner class name */
    public static class C0010j extends com.tencent.bugly.crashreport.crash.j.g {
        public C0010j(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(2, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return true;
        }
    }

    public static class k extends com.tencent.bugly.crashreport.crash.j.g {
        public k(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(0, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().k();
        }
    }

    public static class l extends com.tencent.bugly.crashreport.crash.j.g {
        public l(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(5, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().l();
        }
    }

    public static class m extends com.tencent.bugly.crashreport.crash.j.g {
        public m(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(6, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().m();
        }
    }

    public static class n extends com.tencent.bugly.crashreport.crash.j.g {
        public n(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(1, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().k();
        }
    }

    public static class o extends com.tencent.bugly.crashreport.crash.j.g {
        public o(com.tencent.bugly.crashreport.crash.j.a aVar) {
            super(4, null);
        }

        @Override // com.tencent.bugly.crashreport.crash.j.g
        public boolean a() {
            return com.tencent.bugly.crashreport.crash.m.g().n();
        }
    }

    public j(int i2, android.content.Context context, com.tencent.bugly.proguard.W w, com.tencent.bugly.proguard.J j, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.BuglyStrategy.a aVar, com.tencent.bugly.crashreport.crash.r rVar) {
        a = i2;
        this.f1019g = context;
        this.h = w;
        this.i = j;
        this.j = cVar;
        this.l = aVar;
        this.k = rVar;
    }

    public static com.tencent.bugly.proguard.qa a(java.lang.String str, android.content.Context context, java.lang.String str2) throws java.io.IOException {
        java.io.FileInputStream fileInputStream;
        if (str2 == null || context == null) {
            com.tencent.bugly.proguard.aa.e("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.proguard.aa.a("zip %s", str2);
        java.io.File file = new java.io.File(str2);
        java.io.File file2 = new java.io.File(context.getCacheDir(), str);
        if (!com.tencent.bugly.proguard.ha.a(file, file2, 5000)) {
            com.tencent.bugly.proguard.aa.e("zip fail!", new java.lang.Object[0]);
            return null;
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
        try {
            fileInputStream = new java.io.FileInputStream(file2);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = fileInputStream.read(bArr);
                    if (i2 <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i2);
                    byteArrayOutputStream.flush();
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                com.tencent.bugly.proguard.aa.a("read bytes :%d", java.lang.Integer.valueOf(byteArray.length));
                com.tencent.bugly.proguard.qa qaVar = new com.tencent.bugly.proguard.qa((byte) 2, file2.getName(), byteArray);
                try {
                    fileInputStream.close();
                } catch (java.io.IOException e2) {
                    if (!com.tencent.bugly.proguard.aa.b(e2)) {
                        e2.printStackTrace();
                    }
                }
                if (file2.exists()) {
                    com.tencent.bugly.proguard.aa.a("del tmp", new java.lang.Object[0]);
                    file2.delete();
                }
                return qaVar;
            } catch (java.lang.Throwable th) {
                th = th;
                try {
                    if (!com.tencent.bugly.proguard.aa.b(th)) {
                        th.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (java.io.IOException e3) {
                            if (!com.tencent.bugly.proguard.aa.b(e3)) {
                                e3.printStackTrace();
                            }
                        }
                    }
                    if (file2.exists()) {
                        com.tencent.bugly.proguard.aa.a("del tmp", new java.lang.Object[0]);
                        file2.delete();
                    }
                    return null;
                } catch (java.lang.Throwable th2) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (java.io.IOException e4) {
                            if (!com.tencent.bugly.proguard.aa.b(e4)) {
                                e4.printStackTrace();
                            }
                        }
                    }
                    if (file2.exists()) {
                        com.tencent.bugly.proguard.aa.a("del tmp", new java.lang.Object[0]);
                        file2.delete();
                    }
                    throw th2;
                }
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    public static com.tencent.bugly.proguard.ra a(android.content.Context context, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar) {
        if (context == null || crashDetailBean == null || aVar == null) {
            com.tencent.bugly.proguard.aa.e("enExp args == null", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.proguard.ra raVar = new com.tencent.bugly.proguard.ra();
        raVar.i = g(crashDetailBean);
        raVar.j = crashDetailBean.r;
        raVar.k = crashDetailBean.n;
        raVar.l = crashDetailBean.o;
        raVar.m = crashDetailBean.p;
        raVar.o = crashDetailBean.q;
        raVar.p = crashDetailBean.z;
        raVar.q = crashDetailBean.f982c;
        raVar.r = null;
        raVar.t = crashDetailBean.m;
        raVar.u = crashDetailBean.f984e;
        raVar.n = crashDetailBean.B;
        raVar.v = null;
        raVar.x = h(crashDetailBean);
        com.tencent.bugly.proguard.aa.a("libInfo %s", raVar.w);
        raVar.y = a(crashDetailBean, aVar, context);
        if (crashDetailBean.j) {
            raVar.s = crashDetailBean.t;
        }
        raVar.z = a(crashDetailBean, aVar);
        raVar.A = new java.util.HashMap();
        java.util.Map<java.lang.String, java.lang.String> map = crashDetailBean.S;
        if (map != null && map.size() > 0) {
            raVar.A.putAll(crashDetailBean.S);
            com.tencent.bugly.proguard.aa.c("setted message size %d", java.lang.Integer.valueOf(raVar.A.size()));
        }
        a(raVar.A, crashDetailBean);
        java.lang.Object[] objArr = new java.lang.Object[12];
        objArr[0] = crashDetailBean.n;
        objArr[1] = crashDetailBean.f982c;
        objArr[2] = aVar.w();
        objArr[3] = java.lang.Long.valueOf((crashDetailBean.r - crashDetailBean.Q) / 1000);
        objArr[4] = java.lang.Boolean.valueOf(crashDetailBean.k);
        objArr[5] = java.lang.Boolean.valueOf(crashDetailBean.R);
        objArr[6] = java.lang.Boolean.valueOf(crashDetailBean.j);
        objArr[7] = java.lang.Boolean.valueOf(crashDetailBean.b == 1);
        objArr[8] = java.lang.Integer.valueOf(crashDetailBean.t);
        objArr[9] = crashDetailBean.s;
        objArr[10] = java.lang.Boolean.valueOf(crashDetailBean.f983d);
        objArr[11] = java.lang.Integer.valueOf(raVar.z.size());
        com.tencent.bugly.proguard.aa.a("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", objArr);
        return raVar;
    }

    public static com.tencent.bugly.proguard.sa a(android.content.Context context, java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list, com.tencent.bugly.crashreport.common.info.a aVar) {
        if (context == null || list == null || list.size() == 0 || aVar == null) {
            com.tencent.bugly.proguard.aa.e("enEXPPkg args == null!", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.proguard.sa saVar = new com.tencent.bugly.proguard.sa();
        saVar.b = new java.util.ArrayList<>();
        java.util.Iterator<com.tencent.bugly.crashreport.crash.CrashDetailBean> it = list.iterator();
        while (it.hasNext()) {
            saVar.b.add(a(context, it.next(), aVar));
        }
        return saVar;
    }

    public static java.util.ArrayList<com.tencent.bugly.proguard.qa> a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar, android.content.Context context) {
        java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList = new java.util.ArrayList<>(20);
        a(arrayList, crashDetailBean);
        c(arrayList, crashDetailBean.w);
        b(arrayList, crashDetailBean.x);
        a(arrayList, crashDetailBean.Z);
        a(arrayList, crashDetailBean.aa, context);
        b(arrayList, crashDetailBean.y);
        a(arrayList, crashDetailBean, context);
        b(arrayList, crashDetailBean, context);
        a(arrayList, aVar.ja);
        a(arrayList, crashDetailBean.Y);
        return arrayList;
    }

    public static java.util.Map<java.lang.String, java.lang.String> a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.common.info.a aVar) {
        java.util.HashMap map = new java.util.HashMap(30);
        try {
            map.put("A9", "" + crashDetailBean.C);
            map.put("A11", "" + crashDetailBean.D);
            map.put("A10", "" + crashDetailBean.E);
            map.put("A23", "" + crashDetailBean.f985f);
            aVar.getClass();
            map.put("A7", "");
            map.put("A6", "" + aVar.j());
            map.put("A5", "" + aVar.t());
            map.put("A22", "" + aVar.k());
            map.put("A2", "" + crashDetailBean.G);
            map.put("A1", "" + crashDetailBean.F);
            map.put("A24", "" + aVar.p);
            map.put("A17", "" + crashDetailBean.H);
            map.put("A25", "" + aVar.k());
            map.put("A15", "" + aVar.i());
            map.put("A13", "" + aVar.o());
            map.put("A34", "" + crashDetailBean.A);
            if (aVar.ea != null) {
                map.put("productIdentify", "" + aVar.ea);
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("");
            sb.append(java.net.URLEncoder.encode(crashDetailBean.L, "utf-8"));
            map.put("A26", sb.toString());
            if (crashDetailBean.b == 1) {
                map.put("A27", "" + crashDetailBean.O);
                map.put("A28", "" + crashDetailBean.N);
                map.put("A29", "" + crashDetailBean.k);
            }
            map.put("A30", "" + crashDetailBean.P);
            map.put("A18", "" + crashDetailBean.Q);
            map.put("A36", "" + (true ^ crashDetailBean.R));
            map.put("F02", "" + aVar.X);
            map.put("F03", "" + aVar.Y);
            map.put("F04", "" + aVar.w());
            map.put("F05", "" + aVar.Z);
            map.put("F06", "" + aVar.W);
            map.put("F08", "" + aVar.ca);
            map.put("F09", "" + aVar.da);
            map.put("F10", "" + aVar.aa);
            b(map, crashDetailBean);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            com.tencent.bugly.proguard.aa.b(e2);
        }
        return map;
    }

    public static void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean2) {
        if (crashDetailBean.r != crashDetailBean2.r) {
            java.lang.String str = crashDetailBean.s;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("");
            sbO.append(crashDetailBean2.r);
            if (str.contains(sbO.toString())) {
                return;
            }
            crashDetailBean.t++;
            crashDetailBean.s += crashDetailBean2.r + "\n";
        }
    }

    public static void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list) {
        java.lang.String[] strArrSplit;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        for (int i2 = 1; i2 < list.size(); i2++) {
            java.lang.String str = list.get(i2).s;
            if (str != null && (strArrSplit = str.split("\n")) != null) {
                for (java.lang.String str2 : strArrSplit) {
                    if (!crashDetailBean.s.contains(str2)) {
                        crashDetailBean.t++;
                        sb.append(str2);
                        sb.append("\n");
                    }
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    public static void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String value;
        if (map == null || map.isEmpty()) {
            com.tencent.bugly.proguard.aa.e("extra map is empty. CrashBean won't have userDatas.", new java.lang.Object[0]);
            return;
        }
        crashDetailBean.S = new java.util.LinkedHashMap(map.size());
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : map.entrySet()) {
            if (!com.tencent.bugly.proguard.ha.b(entry.getKey())) {
                java.lang.String key = entry.getKey();
                if (key.length() > 100) {
                    key = key.substring(0, 100);
                    com.tencent.bugly.proguard.aa.e("setted key length is over limit %d substring to %s", 100, key);
                }
                if (com.tencent.bugly.proguard.ha.b(entry.getValue()) || entry.getValue().length() <= 100000) {
                    value = entry.getValue();
                } else {
                    value = entry.getValue().substring(entry.getValue().length() - 100000);
                    com.tencent.bugly.proguard.aa.e("setted %s value length is over limit %d substring", key, 100000);
                }
                crashDetailBean.S.put(key, value);
                com.tencent.bugly.proguard.aa.c("add setted key %s value size:%d", key, java.lang.Integer.valueOf(value.length()));
            }
        }
    }

    private void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, boolean z, int i2) {
        if (this.k != null) {
            com.tencent.bugly.proguard.aa.a("Calling 'onCrashSaving' of RQD crash listener.", new java.lang.Object[0]);
            if (this.k.a(z, crashDetailBean.n, crashDetailBean.o, crashDetailBean.p, crashDetailBean.q, i2, crashDetailBean.r, crashDetailBean.m, crashDetailBean.f984e, crashDetailBean.f982c, crashDetailBean.A, crashDetailBean.B)) {
                return;
            }
            com.tencent.bugly.proguard.aa.e("Crash listener 'onCrashSaving' return 'false' thus will not handle this crash.", new java.lang.Object[0]);
        }
    }

    public static void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, byte[] bArr) {
        if (bArr == null) {
            com.tencent.bugly.proguard.aa.e("extra user byte is null. CrashBean won't have userExtraByteDatas.", new java.lang.Object[0]);
            return;
        }
        if (bArr.length <= 100000) {
            crashDetailBean.Y = bArr;
        } else {
            com.tencent.bugly.proguard.aa.e("extra bytes size %d is over limit %d will drop over part", java.lang.Integer.valueOf(bArr.length), 100000);
            crashDetailBean.Y = java.util.Arrays.copyOf(bArr, 100000);
        }
        com.tencent.bugly.proguard.aa.c("add extra bytes %d ", java.lang.Integer.valueOf(bArr.length));
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.lang.String string;
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        if (aVarN == null) {
            return;
        }
        com.tencent.bugly.proguard.aa.b("#++++++++++Record By Bugly++++++++++#", new java.lang.Object[0]);
        com.tencent.bugly.proguard.aa.b("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new java.lang.Object[0]);
        com.tencent.bugly.proguard.aa.b("# PKG NAME: %s", aVarN.f967g);
        com.tencent.bugly.proguard.aa.b("# APP VER: %s", aVarN.F);
        com.tencent.bugly.proguard.aa.b("# SDK VER: %s", aVarN.l);
        com.tencent.bugly.proguard.aa.b("# LAUNCH TIME: %s", com.tencent.bugly.proguard.ha.a(new java.util.Date(com.tencent.bugly.crashreport.common.info.a.n().f965e)));
        com.tencent.bugly.proguard.aa.b("# CRASH TYPE: %s", str);
        com.tencent.bugly.proguard.aa.b("# CRASH TIME: %s", str2);
        com.tencent.bugly.proguard.aa.b("# CRASH PROCESS: %s", str3);
        com.tencent.bugly.proguard.aa.b("# CRASH FOREGROUND: %s", java.lang.Boolean.valueOf(aVarN.E()));
        com.tencent.bugly.proguard.aa.b("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            com.tencent.bugly.proguard.aa.b("# REPORT ID: %s", crashDetailBean.f982c);
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = aVarN.l();
            objArr[1] = aVarN.o().booleanValue() ? "ROOTED" : "UNROOT";
            com.tencent.bugly.proguard.aa.b("# CRASH DEVICE: %s %s", objArr);
            com.tencent.bugly.proguard.aa.b("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", java.lang.Long.valueOf(crashDetailBean.C), java.lang.Long.valueOf(crashDetailBean.D), java.lang.Long.valueOf(crashDetailBean.E));
            com.tencent.bugly.proguard.aa.b("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", java.lang.Long.valueOf(crashDetailBean.F), java.lang.Long.valueOf(crashDetailBean.G), java.lang.Long.valueOf(crashDetailBean.H));
            if (!com.tencent.bugly.proguard.ha.b(crashDetailBean.O)) {
                com.tencent.bugly.proguard.aa.b("# EXCEPTION FIRED BY %s %s", crashDetailBean.O, crashDetailBean.N);
            } else if (crashDetailBean.b == 3) {
                java.lang.Object[] objArr2 = new java.lang.Object[1];
                if (crashDetailBean.T == null) {
                    string = "null";
                } else {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("");
                    sbO.append(crashDetailBean.T.get("BUGLY_CR_01"));
                    string = sbO.toString();
                }
                objArr2[0] = string;
                com.tencent.bugly.proguard.aa.b("# EXCEPTION ANR MESSAGE:\n %s", objArr2);
            }
        }
        if (!com.tencent.bugly.proguard.ha.b(str5)) {
            com.tencent.bugly.proguard.aa.b("# CRASH STACK: ", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.b(str5, new java.lang.Object[0]);
        }
        com.tencent.bugly.proguard.aa.b("#++++++++++++++++++++++++++++++++++++++++++#", new java.lang.Object[0]);
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.lang.String str;
        if (crashDetailBean.j && (str = crashDetailBean.s) != null && str.length() > 0) {
            try {
                arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "alltimes.txt", crashDetailBean.s.getBytes("utf-8")));
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                com.tencent.bugly.proguard.aa.b(e2);
            }
        }
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, android.content.Context context) {
        com.tencent.bugly.proguard.qa qaVarA;
        if (crashDetailBean.b != 3) {
            return;
        }
        com.tencent.bugly.proguard.aa.a("crashBean.anrMessages:%s", crashDetailBean.T);
        try {
            if (crashDetailBean.T != null && crashDetailBean.T.containsKey("BUGLY_CR_01")) {
                if (!android.text.TextUtils.isEmpty(crashDetailBean.T.get("BUGLY_CR_01"))) {
                    arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "anrMessage.txt", crashDetailBean.T.get("BUGLY_CR_01").getBytes("utf-8")));
                    com.tencent.bugly.proguard.aa.a("attach anr message", new java.lang.Object[0]);
                }
                crashDetailBean.T.remove("BUGLY_CR_01");
            }
            if (crashDetailBean.v == null || (qaVarA = a("trace.zip", context, crashDetailBean.v)) == null) {
                return;
            }
            com.tencent.bugly.proguard.aa.a("attach traces", new java.lang.Object[0]);
            arrayList.add(qaVarA);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            com.tencent.bugly.proguard.aa.b(e2);
        }
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, java.lang.String str) {
        if (com.tencent.bugly.proguard.ha.b(str)) {
            return;
        }
        try {
            com.tencent.bugly.proguard.qa qaVar = new com.tencent.bugly.proguard.qa((byte) 1, "crashInfos.txt", str.getBytes("utf-8"));
            com.tencent.bugly.proguard.aa.a("attach crash infos", new java.lang.Object[0]);
            arrayList.add(qaVar);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            com.tencent.bugly.proguard.aa.b(e2);
        }
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, java.lang.String str, android.content.Context context) {
        if (str != null) {
            try {
                com.tencent.bugly.proguard.qa qaVarA = a("backupRecord.zip", context, str);
                if (qaVarA != null) {
                    com.tencent.bugly.proguard.aa.a("attach backup record", new java.lang.Object[0]);
                    arrayList.add(qaVarA);
                }
            } catch (java.lang.Exception e2) {
                com.tencent.bugly.proguard.aa.b(e2);
            }
        }
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, java.util.List<java.lang.String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        java.util.Iterator<java.lang.String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        try {
            arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
            com.tencent.bugly.proguard.aa.a("attach pageTracingList", new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void a(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "userExtraByteData", bArr));
            com.tencent.bugly.proguard.aa.a("attach extraData", new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list, boolean z, long j, java.lang.String str, java.lang.String str2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean : list) {
            java.lang.String str3 = f1018f.get(java.lang.Integer.valueOf(crashDetailBean.b));
            if (!android.text.TextUtils.isEmpty(str3)) {
                arrayList.add(new com.tencent.bugly.proguard.S.c(crashDetailBean.f982c, str3, crashDetailBean.r, z, j, str, str2));
            }
        }
        com.tencent.bugly.proguard.S.a().a(arrayList);
    }

    public static void a(java.util.Map<java.lang.String, java.lang.String> map, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("pss:");
        sbO.append(crashDetailBean.I);
        sbO.append(" vss:");
        sbO.append(crashDetailBean.J);
        sbO.append(" javaHeap:");
        sbO.append(crashDetailBean.K);
        com.tencent.bugly.proguard.aa.a(sbO.toString(), new java.lang.Object[0]);
        map.put("SDK_UPLOAD_U1", "" + crashDetailBean.I);
        map.put("SDK_UPLOAD_U2", "" + crashDetailBean.J);
        map.put("SDK_UPLOAD_U3", "" + crashDetailBean.K);
    }

    public static boolean a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, java.util.List<com.tencent.bugly.crashreport.crash.b> list, java.util.List<com.tencent.bugly.crashreport.crash.b> list2) {
        boolean z = false;
        for (com.tencent.bugly.crashreport.crash.b bVar : list) {
            if (crashDetailBean.u.equals(bVar.f1003c)) {
                if (bVar.f1005e) {
                    z = true;
                }
                list2.add(bVar);
            }
        }
        return z;
    }

    public static boolean a(java.lang.String str) {
        java.lang.String str2 = com.tencent.bugly.crashreport.crash.m.n;
        if (str2 != null && !str2.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("Crash filter for crash stack is: %s", com.tencent.bugly.crashreport.crash.m.n);
            if (str.contains(com.tencent.bugly.crashreport.crash.m.n)) {
                com.tencent.bugly.proguard.aa.e("This crash contains the filter string set. It will not be record and upload.", new java.lang.Object[0]);
                return true;
            }
        }
        return false;
    }

    private byte[] a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, int i2, boolean z, int i3) {
        if (this.k != null) {
            com.tencent.bugly.proguard.aa.a("Calling 'getCrashExtraData' of RQD crash listener.", new java.lang.Object[0]);
            return this.k.b(z, crashDetailBean.n, crashDetailBean.p, crashDetailBean.q, i3, crashDetailBean.r);
        }
        if (this.l == null) {
            return null;
        }
        com.tencent.bugly.proguard.aa.a("Calling 'onCrashHandleStart2GetExtraDatas' of Bugly crash listener.", new java.lang.Object[0]);
        return this.l.onCrashHandleStart2GetExtraDatas(i2, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
    }

    public static com.tencent.bugly.crashreport.crash.CrashDetailBean b(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean2) {
        if (crashDetailBean != null) {
            return crashDetailBean;
        }
        crashDetailBean2.j = true;
        crashDetailBean2.t = 0;
        crashDetailBean2.s = "";
        return crashDetailBean2;
    }

    private java.util.Map<java.lang.String, java.lang.String> b(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, int i2, boolean z, int i3) {
        if (this.k == null) {
            if (this.l == null) {
                return null;
            }
            com.tencent.bugly.proguard.aa.a("Calling 'onCrashHandleStart' of Bugly crash listener.", new java.lang.Object[0]);
            return this.l.onCrashHandleStart(i2, crashDetailBean.n, crashDetailBean.o, crashDetailBean.q);
        }
        com.tencent.bugly.proguard.aa.a("Calling 'onCrashHandleStart' of RQD crash listener.", new java.lang.Object[0]);
        this.k.b(z);
        com.tencent.bugly.proguard.aa.a("Calling 'getCrashExtraMessage' of RQD crash listener.", new java.lang.Object[0]);
        java.lang.String strA = this.k.a(z, crashDetailBean.n, crashDetailBean.p, crashDetailBean.q, i3, crashDetailBean.r);
        if (strA == null) {
            return null;
        }
        java.util.HashMap map = new java.util.HashMap(1);
        map.put("userData", strA);
        return map;
    }

    public static void b(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, java.util.List<com.tencent.bugly.crashreport.crash.b> list) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(64);
        for (com.tencent.bugly.crashreport.crash.b bVar : list) {
            if (!bVar.f1005e && !bVar.f1004d) {
                java.lang.String str = crashDetailBean.s;
                java.lang.StringBuilder sbO = e.a.c.a.a.o("");
                sbO.append(bVar.b);
                if (!str.contains(sbO.toString())) {
                    crashDetailBean.t++;
                    sb.append(bVar.b);
                    sb.append("\n");
                }
            }
        }
        crashDetailBean.s += sb.toString();
    }

    public static void b(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, android.content.Context context) {
        java.lang.String str;
        if (crashDetailBean.b == 1 && (str = crashDetailBean.v) != null) {
            try {
                com.tencent.bugly.proguard.qa qaVarA = a("tomb.zip", context, str);
                if (qaVarA != null) {
                    com.tencent.bugly.proguard.aa.a("attach tombs", new java.lang.Object[0]);
                    arrayList.add(qaVarA);
                }
            } catch (java.lang.Exception e2) {
                com.tencent.bugly.proguard.aa.b(e2);
            }
        }
    }

    public static void b(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, java.lang.String str) {
        if (str != null) {
            try {
                arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "jniLog.txt", str.getBytes("utf-8")));
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                com.tencent.bugly.proguard.aa.b(e2);
            }
        }
    }

    public static void b(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            com.tencent.bugly.proguard.qa qaVar = new com.tencent.bugly.proguard.qa((byte) 2, "buglylog.zip", bArr);
            com.tencent.bugly.proguard.aa.a("attach user log", new java.lang.Object[0]);
            arrayList.add(qaVar);
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(e2);
        }
    }

    public static void b(java.util.Map<java.lang.String, java.lang.String> map, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean.U >= 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("");
            sbO.append(crashDetailBean.U);
            map.put("C01", sbO.toString());
        }
        if (crashDetailBean.V >= 0) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("");
            sbO2.append(crashDetailBean.V);
            map.put("C02", sbO2.toString());
        }
        java.util.Map<java.lang.String, java.lang.String> map2 = crashDetailBean.W;
        if (map2 != null && map2.size() > 0) {
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry : crashDetailBean.W.entrySet()) {
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("C03_");
                sbO3.append(entry.getKey());
                map.put(sbO3.toString(), entry.getValue());
            }
        }
        java.util.Map<java.lang.String, java.lang.String> map3 = crashDetailBean.X;
        if (map3 == null || map3.size() <= 0) {
            return;
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry2 : crashDetailBean.X.entrySet()) {
            java.lang.StringBuilder sbO4 = e.a.c.a.a.o("C04_");
            sbO4.append(entry2.getKey());
            map.put(sbO4.toString(), entry2.getValue());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001b, code lost:
    
        if (r0.size() >= com.tencent.bugly.crashreport.crash.m.f1029c) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(com.tencent.bugly.crashreport.crash.CrashDetailBean r8, java.util.List<com.tencent.bugly.crashreport.crash.b> r9, java.util.List<com.tencent.bugly.crashreport.crash.b> r10) {
        /*
            r7 = this;
            boolean r0 = r7.a(r8)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.util.ArrayList r0 = new java.util.ArrayList
            r2 = 10
            r0.<init>(r2)
            boolean r9 = a(r8, r9, r0)
            if (r9 != 0) goto L20
            int r9 = r0.size()     // Catch: java.lang.Exception -> L1e
            int r2 = com.tencent.bugly.crashreport.crash.m.f1029c     // Catch: java.lang.Exception -> L1e
            if (r9 < r2) goto L60
            goto L20
        L1e:
            r8 = move-exception
            goto L56
        L20:
            java.lang.String r9 = "same crash occur too much do merged!"
            java.lang.Object[] r2 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L1e
            com.tencent.bugly.proguard.aa.c(r9, r2)     // Catch: java.lang.Exception -> L1e
            com.tencent.bugly.crashreport.crash.CrashDetailBean r8 = r7.a(r0, r8)     // Catch: java.lang.Exception -> L1e
            java.util.Iterator r9 = r0.iterator()     // Catch: java.lang.Exception -> L1e
        L2f:
            boolean r0 = r9.hasNext()     // Catch: java.lang.Exception -> L1e
            if (r0 == 0) goto L47
            java.lang.Object r0 = r9.next()     // Catch: java.lang.Exception -> L1e
            com.tencent.bugly.crashreport.crash.b r0 = (com.tencent.bugly.crashreport.crash.b) r0     // Catch: java.lang.Exception -> L1e
            long r2 = r0.a     // Catch: java.lang.Exception -> L1e
            long r4 = r8.a     // Catch: java.lang.Exception -> L1e
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 == 0) goto L2f
            r10.add(r0)     // Catch: java.lang.Exception -> L1e
            goto L2f
        L47:
            r7.f(r8)     // Catch: java.lang.Exception -> L1e
            r7.c(r10)     // Catch: java.lang.Exception -> L1e
            java.lang.String r8 = "[crash] save crash success. For this device crash many times, it will not upload crashes immediately"
            java.lang.Object[] r9 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L1e
            com.tencent.bugly.proguard.aa.d(r8, r9)     // Catch: java.lang.Exception -> L1e
            r8 = 1
            return r8
        L56:
            com.tencent.bugly.proguard.aa.b(r8)
            java.lang.Object[] r8 = new java.lang.Object[r1]
            java.lang.String r9 = "Failed to merge crash."
            com.tencent.bugly.proguard.aa.e(r9, r8)
        L60:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.j.b(com.tencent.bugly.crashreport.crash.CrashDetailBean, java.util.List, java.util.List):boolean");
    }

    public static boolean b(java.lang.String str) {
        java.lang.String str2 = com.tencent.bugly.crashreport.crash.m.o;
        if (str2 != null && !str2.isEmpty()) {
            try {
                com.tencent.bugly.proguard.aa.a("Crash regular filter for crash stack is: %s", com.tencent.bugly.crashreport.crash.m.o);
                if (java.util.regex.Pattern.compile(com.tencent.bugly.crashreport.crash.m.o).matcher(str).find()) {
                    com.tencent.bugly.proguard.aa.e("This crash matches the regular filter string set. It will not be record and upload.", new java.lang.Object[0]);
                    return true;
                }
            } catch (java.lang.Exception e2) {
                com.tencent.bugly.proguard.aa.b(e2);
                com.tencent.bugly.proguard.aa.e("Failed to compile " + com.tencent.bugly.crashreport.crash.m.o, new java.lang.Object[0]);
            }
        }
        return false;
    }

    public static void c(java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList, java.lang.String str) {
        if (str != null) {
            try {
                arrayList.add(new com.tencent.bugly.proguard.qa((byte) 1, "log.txt", str.getBytes("utf-8")));
            } catch (java.lang.Exception e2) {
                e2.printStackTrace();
                com.tencent.bugly.proguard.aa.b(e2);
            }
        }
    }

    private void e(java.util.List<com.tencent.bugly.crashreport.crash.b> list) {
        java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> listA = a(list);
        if (listA == null || listA.isEmpty()) {
            return;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean : listA) {
            java.lang.String str = f1018f.get(java.lang.Integer.valueOf(crashDetailBean.b));
            if (!android.text.TextUtils.isEmpty(str)) {
                com.tencent.bugly.proguard.aa.a("find expired data,crashId:%s eventType:%s", crashDetailBean.f982c, str);
                arrayList.add(new com.tencent.bugly.proguard.S.c(crashDetailBean.f982c, str, crashDetailBean.r, false, 0L, "expired", null));
            }
        }
        com.tencent.bugly.proguard.S.a().a(arrayList);
    }

    public static java.lang.String g(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        try {
            android.util.Pair<java.lang.String, java.lang.String> pair = b.get(java.lang.Integer.valueOf(crashDetailBean.b));
            if (pair != null) {
                return crashDetailBean.j ? (java.lang.String) pair.first : (java.lang.String) pair.second;
            }
            com.tencent.bugly.proguard.aa.b("crash type error! %d", java.lang.Integer.valueOf(crashDetailBean.b));
            return "";
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.b(e2);
            return "";
        }
    }

    public static java.util.ArrayList<com.tencent.bugly.proguard.oa> h(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> map = crashDetailBean.h;
        if (map == null || map.isEmpty()) {
            return null;
        }
        java.util.ArrayList<com.tencent.bugly.proguard.oa> arrayList = new java.util.ArrayList<>(crashDetailBean.h.size());
        for (java.util.Map.Entry<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> entry : crashDetailBean.h.entrySet()) {
            com.tencent.bugly.proguard.oa oaVar = new com.tencent.bugly.proguard.oa();
            oaVar.a = entry.getValue().a;
            oaVar.f1133c = entry.getValue().f962c;
            oaVar.f1135e = entry.getValue().b;
            arrayList.add(oaVar);
        }
        return arrayList;
    }

    private void i(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.lang.String str = f1017e.get(java.lang.Integer.valueOf(crashDetailBean.b));
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.proguard.S.a().a(new com.tencent.bugly.proguard.S.c(crashDetailBean.f982c, str, crashDetailBean.r, true, 0L, "realtime", null));
    }

    private boolean j(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        try {
            com.tencent.bugly.proguard.aa.a("save eup logs", new java.lang.Object[0]);
            com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
            java.lang.String strE = aVarN.e();
            java.lang.String str = aVarN.F;
            java.lang.String str2 = crashDetailBean.A;
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("#--------\npackage:");
            sb.append(strE);
            sb.append("\nversion:");
            sb.append(str);
            sb.append("\nsdk:");
            sb.append(aVarN.l);
            sb.append("\nprocess:");
            sb.append(str2);
            sb.append("\ndate:");
            sb.append(com.tencent.bugly.proguard.ha.a(new java.util.Date(crashDetailBean.r)));
            sb.append("\ntype:");
            sb.append(crashDetailBean.n);
            sb.append("\nmessage:");
            sb.append(crashDetailBean.o);
            sb.append("\nstack:\n");
            sb.append(crashDetailBean.q);
            sb.append("\neupID:");
            sb.append(crashDetailBean.f982c);
            sb.append("\n");
            java.lang.String string = sb.toString();
            java.lang.String absolutePath = null;
            if (com.tencent.bugly.crashreport.crash.m.j != null) {
                java.io.File file = new java.io.File(com.tencent.bugly.crashreport.crash.m.j);
                if (file.isFile()) {
                    file = file.getParentFile();
                }
                absolutePath = file.getAbsolutePath();
            } else if (android.os.Environment.getExternalStorageState().equals("mounted")) {
                java.lang.String absolutePath2 = android.os.Environment.getExternalStorageDirectory().getAbsolutePath();
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                sb2.append(absolutePath2);
                sb2.append("/Tencent/");
                sb2.append(this.f1019g.getPackageName());
                absolutePath = sb2.toString();
            }
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append(absolutePath);
            sb3.append("/euplog.txt");
            com.tencent.bugly.proguard.ca.a(sb3.toString(), string, com.tencent.bugly.crashreport.crash.m.k);
            return true;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.e("rqdp{  save error} %s", th.toString());
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public static boolean k(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        boolean z;
        com.tencent.bugly.crashreport.crash.j.g next;
        java.util.Iterator<com.tencent.bugly.crashreport.crash.j.g> it = f1015c.iterator();
        do {
            z = false;
            if (!it.hasNext()) {
                return false;
            }
            next = it.next();
            if (next.a == crashDetailBean.b) {
                z = true;
            }
        } while (!z);
        return next.a();
    }

    public static void l(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean.b == 2) {
            com.tencent.bugly.proguard.aa.d("[crash] a caught exception occur, handling...", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.L l2 = new com.tencent.bugly.proguard.L();
        l2.b = 1;
        l2.f1082c = crashDetailBean.A;
        l2.f1083d = crashDetailBean.B;
        l2.f1084e = crashDetailBean.r;
        com.tencent.bugly.proguard.J.a().b(1);
        com.tencent.bugly.proguard.J.a().c(l2);
        com.tencent.bugly.proguard.aa.d("[crash] a crash occur, handling...", new java.lang.Object[0]);
    }

    public com.tencent.bugly.crashreport.crash.CrashDetailBean a(java.util.List<com.tencent.bugly.crashreport.crash.b> list, com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> listA;
        if (list == null || list.isEmpty()) {
            return crashDetailBean;
        }
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean2 = null;
        java.util.ArrayList arrayList = new java.util.ArrayList(10);
        for (com.tencent.bugly.crashreport.crash.b bVar : list) {
            if (bVar.f1005e) {
                arrayList.add(bVar);
            }
        }
        if (!arrayList.isEmpty() && (listA = a(arrayList)) != null && !listA.isEmpty()) {
            java.util.Collections.sort(listA);
            crashDetailBean2 = listA.get(0);
            a(crashDetailBean2, listA);
        }
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanB = b(crashDetailBean2, crashDetailBean);
        b(crashDetailBeanB, list);
        a(crashDetailBeanB, crashDetailBean);
        return crashDetailBeanB;
    }

    public com.tencent.bugly.crashreport.crash.b a(android.database.Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            com.tencent.bugly.crashreport.crash.b bVar = new com.tencent.bugly.crashreport.crash.b();
            bVar.a = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
            bVar.b = cursor.getLong(cursor.getColumnIndex("_tm"));
            bVar.f1003c = cursor.getString(cursor.getColumnIndex("_s1"));
            bVar.f1004d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            bVar.f1005e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            bVar.f1006f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return bVar;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.b> a() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        android.database.Cursor cursor = null;
        try {
            java.lang.String[] strArr = new java.lang.String[6];
            strArr[0] = com.umeng.analytics.pro.am.f1240d;
            strArr[1] = "_tm";
            strArr[2] = "_s1";
            strArr[3] = "_up";
            strArr[4] = "_me";
            strArr[5] = "_uc";
            android.database.Cursor cursorA = com.tencent.bugly.proguard.J.a().a("t_cr", strArr, null, null, null, true);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                if (cursorA.getCount() < 1) {
                    cursorA.close();
                    return arrayList;
                }
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(com.umeng.analytics.pro.am.f1240d);
                sb.append(" in ");
                sb.append("(");
                int i2 = 0;
                while (cursorA.moveToNext()) {
                    try {
                        com.tencent.bugly.crashreport.crash.b bVarA = a(cursorA);
                        if (bVarA != null) {
                            arrayList.add(bVarA);
                        } else {
                            try {
                                sb.append(cursorA.getLong(cursorA.getColumnIndex(com.umeng.analytics.pro.am.f1240d)));
                                sb.append(",");
                                i2++;
                            } catch (java.lang.Throwable unused) {
                                com.tencent.bugly.proguard.aa.e("unknown id!", new java.lang.Object[0]);
                            }
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
                        cursor = cursorA;
                        try {
                            if (!com.tencent.bugly.proguard.aa.b(th)) {
                                th.printStackTrace();
                            }
                            return arrayList;
                        } finally {
                            if (cursor != null) {
                                cursor.close();
                            }
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new java.lang.StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                java.lang.String string = sb.toString();
                sb.setLength(0);
                if (i2 > 0) {
                    int iA = com.tencent.bugly.proguard.J.a().a("t_cr", string, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
                    java.lang.Object[] objArr = new java.lang.Object[2];
                    objArr[0] = "t_cr";
                    objArr[1] = java.lang.Integer.valueOf(iA);
                    com.tencent.bugly.proguard.aa.e("deleted %s illegal data %d", objArr);
                }
                cursorA.close();
                return arrayList;
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
        }
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> a(java.util.List<com.tencent.bugly.crashreport.crash.b> list) {
        android.database.Cursor cursorA;
        if (list == null || list.size() == 0) {
            return null;
        }
        java.lang.StringBuilder sbR = e.a.c.a.a.r(com.umeng.analytics.pro.am.f1240d, " in ", "(");
        java.util.Iterator<com.tencent.bugly.crashreport.crash.b> it = list.iterator();
        while (it.hasNext()) {
            sbR.append(it.next().a);
            sbR.append(",");
        }
        if (sbR.toString().contains(",")) {
            sbR = new java.lang.StringBuilder(sbR.substring(0, sbR.lastIndexOf(",")));
        }
        sbR.append(")");
        java.lang.String string = sbR.toString();
        sbR.setLength(0);
        try {
            cursorA = com.tencent.bugly.proguard.J.a().a("t_cr", null, string, null, null, true);
            if (cursorA == null) {
                return null;
            }
            try {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                sbR.append(com.umeng.analytics.pro.am.f1240d);
                sbR.append(" in ");
                sbR.append("(");
                int i2 = 0;
                while (cursorA.moveToNext()) {
                    try {
                        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanB = b(cursorA);
                        if (crashDetailBeanB != null) {
                            arrayList.add(crashDetailBeanB);
                        } else {
                            try {
                                sbR.append(cursorA.getLong(cursorA.getColumnIndex(com.umeng.analytics.pro.am.f1240d)));
                                sbR.append(",");
                                i2++;
                            } catch (java.lang.Throwable unused) {
                                com.tencent.bugly.proguard.aa.e("unknown id!", new java.lang.Object[0]);
                            }
                        }
                    } catch (java.lang.Throwable th) {
                        th = th;
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
                }
                if (sbR.toString().contains(",")) {
                    sbR = new java.lang.StringBuilder(sbR.substring(0, sbR.lastIndexOf(",")));
                }
                sbR.append(")");
                java.lang.String string2 = sbR.toString();
                if (i2 > 0) {
                    int iA = com.tencent.bugly.proguard.J.a().a("t_cr", string2, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
                    java.lang.Object[] objArr = new java.lang.Object[2];
                    objArr[0] = "t_cr";
                    objArr[1] = java.lang.Integer.valueOf(iA);
                    com.tencent.bugly.proguard.aa.e("deleted %s illegal data %d", objArr);
                }
                cursorA.close();
                return arrayList;
            } catch (java.lang.Throwable th2) {
                th = th2;
            }
        } catch (java.lang.Throwable th3) {
            th = th3;
            cursorA = null;
        }
    }

    public void a(int i2) {
        if (i2 <= 0) {
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(com.umeng.analytics.pro.am.f1240d);
        sb.append(" in ");
        sb.append("(");
        sb.append("SELECT ");
        sb.append(com.umeng.analytics.pro.am.f1240d);
        e.a.c.a.a.B(sb, " FROM ", "t_cr", " order by ", com.umeng.analytics.pro.am.f1240d);
        sb.append(" limit ");
        sb.append(i2);
        sb.append(")");
        java.lang.String string = sb.toString();
        sb.setLength(0);
        try {
            com.tencent.bugly.proguard.aa.a("deleted first record %s data %d", "t_cr", java.lang.Integer.valueOf(com.tencent.bugly.proguard.J.a().a("t_cr", string, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true)));
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, long j, boolean z) {
        if (!com.tencent.bugly.crashreport.crash.m.l) {
            com.tencent.bugly.proguard.aa.c("do not upload spot crash right now, crash would be uploaded when app next start", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.c("try to upload right now", new java.lang.Object[0]);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        arrayList.add(crashDetailBean);
        a(arrayList, j, z, crashDetailBean.b == 7, z);
    }

    public void a(java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list, long j, boolean z, boolean z2, boolean z3) {
        if (!com.tencent.bugly.crashreport.common.info.a.a(this.f1019g).j) {
            com.tencent.bugly.proguard.aa.e("warn: not upload process", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.W w = this.h;
        if (w == null) {
            com.tencent.bugly.proguard.aa.e("warn: upload manager is null", new java.lang.Object[0]);
            return;
        }
        if (!z3 && !w.a(com.tencent.bugly.crashreport.crash.m.a)) {
            com.tencent.bugly.proguard.aa.e("warn: not crashHappen or not should upload", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBeanC = this.j.c();
        if (!strategyBeanC.f972f) {
            com.tencent.bugly.proguard.aa.e("remote report is disable!", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.d("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new java.lang.Object[0]);
            return;
        }
        if (list == null || list.size() == 0) {
            com.tencent.bugly.proguard.aa.e("warn: crashList is null or crashList num is 0", new java.lang.Object[0]);
            return;
        }
        try {
            java.lang.String str = strategyBeanC.r;
            java.lang.String str2 = com.tencent.bugly.crashreport.common.strategy.StrategyBean.b;
            com.tencent.bugly.proguard.sa saVarA = a(this.f1019g, list, com.tencent.bugly.crashreport.common.info.a.n());
            if (saVarA == null) {
                com.tencent.bugly.proguard.aa.e("create eupPkg fail!", new java.lang.Object[0]);
                return;
            }
            byte[] bArrA = com.tencent.bugly.proguard.N.a((com.tencent.bugly.proguard.AbstractC0254m) saVarA);
            if (bArrA == null) {
                com.tencent.bugly.proguard.aa.e("send encode fail!", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.proguard.ta taVarA = com.tencent.bugly.proguard.N.a(this.f1019g, 830, bArrA);
            if (taVarA == null) {
                com.tencent.bugly.proguard.aa.e("request package is null.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.crashreport.crash.j.f fVar = new com.tencent.bugly.crashreport.crash.j.f(java.lang.System.currentTimeMillis(), list, z);
            if (z) {
                this.h.a(a, taVarA, str, str2, fVar, j, z2);
            } else {
                this.h.a(a, taVarA, str, str2, fVar, false);
            }
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("req cr error %s", th.toString());
            if (com.tencent.bugly.proguard.aa.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public void a(boolean z, java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            com.tencent.bugly.proguard.aa.a("up finish update state %b", java.lang.Boolean.valueOf(z));
            for (com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean : list) {
                com.tencent.bugly.proguard.aa.a("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f982c, java.lang.Integer.valueOf(crashDetailBean.l), java.lang.Boolean.valueOf(crashDetailBean.f983d), java.lang.Boolean.valueOf(crashDetailBean.j));
                int i2 = crashDetailBean.l + 1;
                crashDetailBean.l = i2;
                crashDetailBean.f983d = z;
                com.tencent.bugly.proguard.aa.a("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f982c, java.lang.Integer.valueOf(i2), java.lang.Boolean.valueOf(crashDetailBean.f983d), java.lang.Boolean.valueOf(crashDetailBean.j));
            }
            java.util.Iterator<com.tencent.bugly.crashreport.crash.CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                com.tencent.bugly.crashreport.crash.m.g().a(it.next());
            }
            com.tencent.bugly.proguard.aa.a("update state size %d", java.lang.Integer.valueOf(list.size()));
        }
        if (z) {
            return;
        }
        com.tencent.bugly.proguard.aa.d("[crash] upload fail.", new java.lang.Object[0]);
    }

    public boolean a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        int i2 = crashDetailBean.b;
        boolean z = i2 == 0 || i2 == 1;
        boolean z2 = i2 == 3;
        if (com.tencent.bugly.b.f893c) {
            return false;
        }
        if (z2 || z) {
            return com.tencent.bugly.crashreport.crash.m.f1030d;
        }
        return true;
    }

    public boolean a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, int i2) {
        if (crashDetailBean == null) {
            com.tencent.bugly.proguard.aa.e("CrashBean is null, won't handle.", new java.lang.Object[0]);
            return true;
        }
        if (a(crashDetailBean.q) || b(crashDetailBean.q)) {
            return true;
        }
        l(crashDetailBean);
        java.util.List<com.tencent.bugly.crashreport.crash.b> listA = a();
        java.util.ArrayList arrayList = new java.util.ArrayList(10);
        if (listA != null && listA.size() > 0) {
            arrayList.addAll(b(listA));
            listA.removeAll(arrayList);
            if (listA.size() > 20) {
                a(5);
            }
            if (b(crashDetailBean, listA, arrayList)) {
                return true;
            }
        }
        f(crashDetailBean);
        i(crashDetailBean);
        c(arrayList);
        com.tencent.bugly.proguard.aa.d("[crash] save crash success", new java.lang.Object[0]);
        return false;
    }

    public android.content.ContentValues b(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            android.content.ContentValues contentValues = new android.content.ContentValues();
            if (crashDetailBean.a > 0) {
                contentValues.put(com.umeng.analytics.pro.am.f1240d, java.lang.Long.valueOf(crashDetailBean.a));
            }
            contentValues.put("_tm", java.lang.Long.valueOf(crashDetailBean.r));
            contentValues.put("_s1", crashDetailBean.u);
            contentValues.put("_up", java.lang.Integer.valueOf(crashDetailBean.f983d ? 1 : 0));
            contentValues.put("_me", java.lang.Integer.valueOf(crashDetailBean.j ? 1 : 0));
            contentValues.put("_uc", java.lang.Integer.valueOf(crashDetailBean.l));
            contentValues.put("_dt", com.tencent.bugly.proguard.ha.a(crashDetailBean));
            return contentValues;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public com.tencent.bugly.crashreport.crash.CrashDetailBean b(android.database.Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j = cursor.getLong(cursor.getColumnIndex(com.umeng.analytics.pro.am.f1240d));
            com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean = (com.tencent.bugly.crashreport.crash.CrashDetailBean) com.tencent.bugly.proguard.ha.a(blob, com.tencent.bugly.crashreport.crash.CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.a = j;
            }
            return crashDetailBean;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> b() {
        com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBeanC = com.tencent.bugly.crashreport.common.strategy.c.b().c();
        if (strategyBeanC == null) {
            com.tencent.bugly.proguard.aa.e("have not synced remote!", new java.lang.Object[0]);
            return null;
        }
        if (!strategyBeanC.f972f) {
            com.tencent.bugly.proguard.aa.e("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.d("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new java.lang.Object[0]);
            return null;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        long jB = com.tencent.bugly.proguard.ha.b();
        java.util.List<com.tencent.bugly.crashreport.crash.b> listA = a();
        com.tencent.bugly.proguard.aa.a("Size of crash list loaded from DB: %s", java.lang.Integer.valueOf(listA.size()));
        if (listA.size() <= 0) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.ArrayList arrayList2 = new java.util.ArrayList();
        arrayList.addAll(b(listA));
        listA.removeAll(arrayList);
        java.util.Iterator<com.tencent.bugly.crashreport.crash.b> it = listA.iterator();
        while (it.hasNext()) {
            com.tencent.bugly.crashreport.crash.b next = it.next();
            long j = next.b;
            if (j < jB - com.tencent.bugly.crashreport.crash.m.f1033g) {
                arrayList2.add(next);
            } else if (next.f1004d) {
                if (j >= jCurrentTimeMillis - 86400000) {
                    it.remove();
                } else if (!next.f1005e) {
                }
            } else if (next.f1006f < 3 || j >= jCurrentTimeMillis - 86400000) {
            }
            it.remove();
            arrayList.add(next);
        }
        e(arrayList2);
        if (arrayList.size() > 0) {
            c(arrayList);
        }
        java.util.ArrayList arrayList3 = new java.util.ArrayList();
        java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> listA2 = a(listA);
        if (listA2 != null && listA2.size() > 0) {
            java.lang.String str = com.tencent.bugly.crashreport.common.info.a.n().F;
            java.util.Iterator<com.tencent.bugly.crashreport.crash.CrashDetailBean> it2 = listA2.iterator();
            while (it2.hasNext()) {
                com.tencent.bugly.crashreport.crash.CrashDetailBean next2 = it2.next();
                if (!str.equals(next2.f985f)) {
                    it2.remove();
                    arrayList3.add(next2);
                }
            }
        }
        if (arrayList3.size() > 0) {
            d(arrayList3);
        }
        return listA2;
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.b> b(java.util.List<com.tencent.bugly.crashreport.crash.b> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.tencent.bugly.crashreport.crash.b bVar : list) {
            if (bVar.f1004d && bVar.b <= jCurrentTimeMillis - 86400000) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public void c(java.util.List<com.tencent.bugly.crashreport.crash.b> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        java.lang.StringBuilder sbR = e.a.c.a.a.r(com.umeng.analytics.pro.am.f1240d, " in ", "(");
        java.util.Iterator<com.tencent.bugly.crashreport.crash.b> it = list.iterator();
        while (it.hasNext()) {
            sbR.append(it.next().a);
            sbR.append(",");
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(sbR.substring(0, sbR.lastIndexOf(",")));
        sb.append(")");
        java.lang.String string = sb.toString();
        sb.setLength(0);
        try {
            int iA = com.tencent.bugly.proguard.J.a().a("t_cr", string, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
            java.lang.Object[] objArr = new java.lang.Object[2];
            objArr[0] = "t_cr";
            objArr[1] = java.lang.Integer.valueOf(iA);
            com.tencent.bugly.proguard.aa.a("deleted %s data %d", objArr);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public boolean c(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        return a(crashDetailBean, -123456789);
    }

    public void d(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return;
        }
        if (this.l == null && this.k == null) {
            return;
        }
        if (!k(crashDetailBean)) {
            com.tencent.bugly.proguard.aa.a("Should not call back.", new java.lang.Object[0]);
            return;
        }
        try {
            if (!f1016d.containsKey(java.lang.Integer.valueOf(crashDetailBean.b))) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Cannot get crash type for crashBean type:");
                sb.append(crashDetailBean.b);
                com.tencent.bugly.proguard.aa.e(sb.toString(), new java.lang.Object[0]);
                return;
            }
            int iIntValue = f1016d.get(java.lang.Integer.valueOf(crashDetailBean.b)).intValue();
            boolean z = crashDetailBean.b == 1;
            a(crashDetailBean, b(crashDetailBean, iIntValue, z, -1234567890));
            com.tencent.bugly.proguard.aa.c("[crash callback] start user's callback:onCrashHandleStart2GetExtraDatas()", new java.lang.Object[0]);
            a(crashDetailBean, a(crashDetailBean, iIntValue, z, -1234567890));
            a(crashDetailBean, z, -1234567890);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.e("crash handle callback something wrong! %s", th.getClass().getName());
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public void d(java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                for (com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean : list) {
                    sb.append(" or ");
                    sb.append(com.umeng.analytics.pro.am.f1240d);
                    sb.append(" = ");
                    sb.append(crashDetailBean.a);
                }
                java.lang.String string = sb.toString();
                if (string.length() > 0) {
                    string = string.substring(4);
                }
                java.lang.String str = string;
                sb.setLength(0);
                int iA = com.tencent.bugly.proguard.J.a().a("t_cr", str, (java.lang.String[]) null, (com.tencent.bugly.proguard.I) null, true);
                java.lang.Object[] objArr = new java.lang.Object[2];
                objArr[0] = "t_cr";
                objArr[1] = java.lang.Integer.valueOf(iA);
                com.tencent.bugly.proguard.aa.a("deleted %s data %d", objArr);
            } catch (java.lang.Throwable th) {
                if (com.tencent.bugly.proguard.aa.b(th)) {
                    return;
                }
                th.printStackTrace();
            }
        }
    }

    public void e(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        int i2 = crashDetailBean.b;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 3 && !com.tencent.bugly.crashreport.crash.m.g().j()) {
                    return;
                }
            } else if (!com.tencent.bugly.crashreport.crash.m.g().k()) {
                return;
            }
        } else if (!com.tencent.bugly.crashreport.crash.m.g().k()) {
            return;
        }
        if (this.k != null) {
            com.tencent.bugly.proguard.aa.a("Calling 'onCrashHandleEnd' of RQD crash listener.", new java.lang.Object[0]);
            this.k.a(crashDetailBean.b == 1);
        }
    }

    public void f(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return;
        }
        android.content.ContentValues contentValuesB = b(crashDetailBean);
        if (contentValuesB != null) {
            long jA = com.tencent.bugly.proguard.J.a().a("t_cr", contentValuesB, (com.tencent.bugly.proguard.I) null, true);
            if (jA >= 0) {
                com.tencent.bugly.proguard.aa.a("insert %s success!", "t_cr");
                crashDetailBean.a = jA;
            }
        }
        if (com.tencent.bugly.crashreport.crash.m.i) {
            j(crashDetailBean);
        }
    }
}
