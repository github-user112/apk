package com.tencent.bugly.crashreport.common.info;

/* loaded from: classes.dex */
public class a {
    public static final java.util.Map<java.lang.String, java.lang.String> a = new java.util.HashMap();
    public static com.tencent.bugly.crashreport.common.info.a b = null;
    public java.lang.String B;
    public int G;
    public java.lang.String H;

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f963c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f964d;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f967g;
    public final java.lang.String h;
    public boolean ha;
    public java.lang.String i;
    public final android.content.SharedPreferences ma;
    public final android.content.SharedPreferences na;
    public java.lang.String o;
    public final java.lang.String p;
    public java.lang.String q;
    public boolean j = true;
    public final java.lang.String k = "com.tencent.bugly";
    public java.lang.String l = "3.4.2(1.6.1)";
    public final java.lang.String m = "";

    @java.lang.Deprecated
    public final java.lang.String n = "";
    public java.lang.String r = "unknown";
    public java.lang.String s = "unknown";
    public java.lang.String t = "";
    public long u = 0;
    public java.lang.String v = null;
    public long w = -1;
    public long x = -1;
    public long y = -1;
    public java.lang.String z = null;
    public java.lang.String A = null;
    public java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> C = null;
    public boolean D = false;
    public java.lang.String E = null;
    public java.lang.String F = null;
    public java.lang.String I = null;
    public java.lang.String J = null;
    public java.lang.Boolean K = null;
    public java.lang.String L = null;
    public java.lang.String M = null;
    public java.lang.String N = null;
    public java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> O = null;
    public java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> P = null;
    public java.util.List<java.lang.String> Q = null;
    public int R = -1;
    public int S = -1;
    public final java.util.Map<java.lang.String, java.lang.String> T = new java.util.HashMap();
    public final java.util.Map<java.lang.String, java.lang.String> U = new java.util.HashMap();
    public final java.util.Map<java.lang.String, java.lang.String> V = new java.util.HashMap();
    public java.lang.String W = "unknown";
    public long X = 0;
    public long Y = 0;
    public long Z = 0;
    public long aa = 0;
    public boolean ba = false;
    public java.lang.String ca = null;
    public java.lang.String da = null;
    public java.lang.String ea = null;
    public java.lang.String fa = "";
    public boolean ga = false;
    public java.util.HashMap<java.lang.String, java.lang.String> ia = new java.util.HashMap<>();
    public java.util.List<java.lang.String> ja = new java.util.ArrayList();
    public boolean ka = false;
    public com.tencent.bugly.crashreport.b la = null;
    public boolean oa = true;
    public boolean pa = true;
    public boolean qa = false;
    public final java.lang.Object ra = new java.lang.Object();
    public final java.lang.Object sa = new java.lang.Object();
    public final java.lang.Object ta = new java.lang.Object();
    public final java.lang.Object ua = new java.lang.Object();
    public final java.lang.Object va = new java.lang.Object();
    public final java.lang.Object wa = new java.lang.Object();
    public final java.lang.Object xa = new java.lang.Object();
    public final java.util.List<java.lang.Integer> ya = new java.util.ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final long f965e = java.lang.System.currentTimeMillis();

    /* renamed from: f, reason: collision with root package name */
    public final byte f966f = 1;

    public a(android.content.Context context) {
        this.B = null;
        this.H = null;
        this.ha = false;
        this.f963c = com.tencent.bugly.proguard.ha.a(context);
        c(context);
        this.f967g = com.tencent.bugly.crashreport.common.info.AppInfo.d(context);
        this.h = com.tencent.bugly.crashreport.common.info.AppInfo.a(android.os.Process.myPid());
        this.H = com.tencent.bugly.crashreport.common.info.AppInfo.a(context);
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Android ");
        sbO.append(com.tencent.bugly.crashreport.common.info.d.m());
        sbO.append(",level ");
        sbO.append(com.tencent.bugly.crashreport.common.info.d.b());
        this.p = sbO.toString();
        b(context);
        try {
            if (!context.getDatabasePath("bugly_db_").exists()) {
                this.ha = true;
                com.tencent.bugly.proguard.aa.a("App is first time to be installed on the device.", new java.lang.Object[0]);
            }
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.b.f893c) {
                th.printStackTrace();
            }
        }
        this.ma = com.tencent.bugly.proguard.ha.a("BUGLY_COMMON_VALUES", context);
        this.na = com.tencent.bugly.proguard.ha.a("BUGLY_RESERVED_VALUES", context);
        this.B = com.tencent.bugly.crashreport.common.info.d.a(context);
        L();
        com.tencent.bugly.proguard.aa.a("com info create end", new java.lang.Object[0]);
    }

    private void L() {
        try {
            for (java.util.Map.Entry<java.lang.String, ?> entry : this.na.getAll().entrySet()) {
                com.tencent.bugly.proguard.aa.a("put reserved request data from sp, key:%s value:%s", entry.getKey(), entry.getValue());
                a(entry.getKey(), entry.getValue().toString(), false);
            }
            for (java.util.Map.Entry<java.lang.String, java.lang.String> entry2 : a.entrySet()) {
                com.tencent.bugly.proguard.aa.a("put reserved request data from cache, key:%s value:%s", entry2.getKey(), entry2.getValue());
                a(entry2.getKey(), entry2.getValue(), true);
            }
            a.clear();
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.a(th);
        }
    }

    public static synchronized com.tencent.bugly.crashreport.common.info.a a(android.content.Context context) {
        if (b == null) {
            b = new com.tencent.bugly.crashreport.common.info.a(context);
        }
        return b;
    }

    private void b(android.content.Context context) {
        java.util.Map<java.lang.String, java.lang.String> mapB = com.tencent.bugly.crashreport.common.info.AppInfo.b(context);
        if (mapB == null) {
            return;
        }
        try {
            this.Q = com.tencent.bugly.crashreport.common.info.AppInfo.a(mapB);
            java.lang.String str = mapB.get("BUGLY_APPID");
            if (str != null) {
                this.I = str;
                a("APP_ID", str);
            }
            java.lang.String str2 = mapB.get("BUGLY_APP_VERSION");
            if (str2 != null) {
                this.F = str2;
            }
            java.lang.String str3 = mapB.get("BUGLY_APP_CHANNEL");
            if (str3 != null) {
                this.J = str3;
            }
            java.lang.String str4 = mapB.get("BUGLY_ENABLE_DEBUG");
            if (str4 != null) {
                this.ba = str4.equalsIgnoreCase("true");
            }
            java.lang.String str5 = mapB.get("com.tencent.rdm.uuid");
            if (str5 != null) {
                this.ea = str5;
            }
            java.lang.String str6 = mapB.get("BUGLY_APP_BUILD_NO");
            if (!android.text.TextUtils.isEmpty(str6)) {
                this.G = java.lang.Integer.parseInt(str6);
            }
            java.lang.String str7 = mapB.get("BUGLY_AREA");
            if (str7 != null) {
                this.fa = str7;
            }
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private void c(android.content.Context context) {
        android.content.pm.PackageInfo packageInfoC = com.tencent.bugly.crashreport.common.info.AppInfo.c(context);
        if (packageInfoC == null) {
            return;
        }
        try {
            java.lang.String str = packageInfoC.versionName;
            this.F = str;
            this.ca = str;
            this.da = java.lang.Integer.toString(packageInfoC.versionCode);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public static synchronized com.tencent.bugly.crashreport.common.info.a n() {
        return b;
    }

    public java.lang.String A() {
        java.lang.String str;
        synchronized (this.wa) {
            str = this.r;
        }
        return str;
    }

    public int B() {
        int size;
        synchronized (this.ta) {
            size = this.T.size();
        }
        return size;
    }

    public int C() {
        int i;
        synchronized (this.va) {
            i = this.R;
        }
        return i;
    }

    @java.lang.Deprecated
    public boolean D() {
        com.tencent.bugly.proguard.aa.c("Detect if the device hook is unavailable", new java.lang.Object[0]);
        return false;
    }

    public boolean E() {
        boolean z = this.ya.size() > 0;
        com.tencent.bugly.proguard.aa.a("isAppForeground:%s", java.lang.Boolean.valueOf(z));
        return z;
    }

    public boolean F() {
        return this.pa;
    }

    public boolean G() {
        return this.oa;
    }

    public boolean H() {
        return this.qa;
    }

    @java.lang.Deprecated
    public boolean I() {
        com.tencent.bugly.proguard.aa.c("Detect if the emulator is unavailable", new java.lang.Object[0]);
        return false;
    }

    public java.lang.String J() {
        try {
            java.util.Map<java.lang.String, ?> all = this.f963c.getSharedPreferences("BuglySdkInfos", 0).getAll();
            if (!all.isEmpty()) {
                synchronized (this.sa) {
                    for (java.util.Map.Entry<java.lang.String, ?> entry : all.entrySet()) {
                        try {
                            this.ia.put(entry.getKey(), entry.getValue().toString());
                        } catch (java.lang.Throwable th) {
                            com.tencent.bugly.proguard.aa.b(th);
                        }
                    }
                }
            }
        } catch (java.lang.Throwable th2) {
            com.tencent.bugly.proguard.aa.b(th2);
        }
        if (this.ia.isEmpty()) {
            com.tencent.bugly.proguard.aa.a("SDK_INFO is empty", new java.lang.Object[0]);
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        for (java.util.Map.Entry<java.lang.String, java.lang.String> entry2 : this.ia.entrySet()) {
            sb.append("[");
            sb.append(entry2.getKey());
            sb.append(",");
            sb.append(entry2.getValue());
            sb.append("] ");
        }
        com.tencent.bugly.proguard.aa.a("SDK_INFO = %s", sb.toString());
        a("SDK_INFO", sb.toString());
        return sb.toString();
    }

    public void K() {
        synchronized (this.ra) {
            this.f964d = java.util.UUID.randomUUID().toString();
        }
    }

    public java.lang.String a(java.lang.String str) {
        java.lang.String str2;
        if (com.tencent.bugly.proguard.ha.b(str)) {
            com.tencent.bugly.proguard.aa.e("key should not be empty %s", e.a.c.a.a.e("", str));
            return null;
        }
        synchronized (this.ta) {
            str2 = this.T.get(str);
        }
        return str2;
    }

    public void a() {
        synchronized (this.ta) {
            this.T.clear();
        }
    }

    public void a(int i) {
        int i2 = this.S;
        if (i2 != i) {
            this.S = i;
            com.tencent.bugly.proguard.aa.c("server scene tag %d changed to tag %d", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(this.S));
        }
    }

    public void a(int i, boolean z) {
        com.tencent.bugly.proguard.aa.a("setActivityForeState, hash:%s isFore:%s", java.lang.Integer.valueOf(i), java.lang.Boolean.valueOf(z));
        if (z) {
            this.ya.add(java.lang.Integer.valueOf(i));
        } else {
            this.ya.remove(java.lang.Integer.valueOf(i));
            this.ya.remove((java.lang.Object) 0);
        }
        com.tencent.bugly.crashreport.b bVar = this.la;
        if (bVar != null) {
            bVar.setNativeIsAppForeground(this.ya.size() > 0);
        }
    }

    public void a(java.lang.String str, java.lang.String str2) {
        if (com.tencent.bugly.proguard.ha.b(str) || com.tencent.bugly.proguard.ha.b(str2)) {
            com.tencent.bugly.proguard.aa.e("server key&value should not be empty %s %s", e.a.c.a.a.e("", str), e.a.c.a.a.e("", str2));
            return;
        }
        synchronized (this.ua) {
            this.V.put(str, str2);
        }
    }

    public void a(java.lang.String str, java.lang.String str2, boolean z) {
        android.content.SharedPreferences.Editor editorPutString;
        if (com.tencent.bugly.proguard.ha.b(str)) {
            com.tencent.bugly.proguard.aa.e("key should not be empty %s", str);
            return;
        }
        com.tencent.bugly.proguard.aa.a("putExtraRequestData key:%s value:%s save:%s", str, str2, java.lang.Boolean.valueOf(z));
        synchronized (this.xa) {
            if (android.text.TextUtils.isEmpty(str2)) {
                this.U.remove(str);
                editorPutString = this.na.edit().remove(str);
            } else {
                this.U.put(str, str2);
                if (z) {
                    editorPutString = this.na.edit().putString(str, str2);
                }
            }
            editorPutString.apply();
        }
    }

    public void a(boolean z) {
        this.D = z;
    }

    public void a(boolean z, boolean z2) {
        this.oa = z;
        this.pa = z2;
    }

    public java.lang.String b(java.lang.String str) {
        java.lang.String strRemove;
        if (com.tencent.bugly.proguard.ha.b(str)) {
            com.tencent.bugly.proguard.aa.e("key should not be empty %s", e.a.c.a.a.e("", str));
            return null;
        }
        synchronized (this.ta) {
            strRemove = this.T.remove(str);
        }
        return strRemove;
    }

    public java.util.Set<java.lang.String> b() {
        java.util.Set<java.lang.String> setKeySet;
        synchronized (this.ta) {
            setKeySet = this.T.keySet();
        }
        return setKeySet;
    }

    public void b(int i) {
        synchronized (this.va) {
            int i2 = this.R;
            if (i2 != i) {
                this.R = i;
                com.tencent.bugly.proguard.aa.c("user scene tag %d changed to tag %d", java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(this.R));
            }
        }
    }

    public void b(java.lang.String str, java.lang.String str2) {
        if (com.tencent.bugly.proguard.ha.b(str) || com.tencent.bugly.proguard.ha.b(str2)) {
            com.tencent.bugly.proguard.aa.e("key&value should not be empty %s %s", e.a.c.a.a.e("", str), e.a.c.a.a.e("", str2));
            return;
        }
        synchronized (this.ta) {
            this.T.put(str, str2);
        }
    }

    public void b(boolean z) {
        this.qa = z;
    }

    public java.lang.String c() {
        if (android.text.TextUtils.isEmpty(this.v)) {
            this.v = com.tencent.bugly.proguard.ha.b("androidid", (java.lang.String) null);
        }
        return this.v;
    }

    public void c(java.lang.String str) {
        this.I = str;
        a("APP_ID", str);
    }

    public void c(java.lang.String str, java.lang.String str2) {
        if (str == null || str2 == null) {
            return;
        }
        synchronized (this.sa) {
            this.ia.put(str, str2);
        }
    }

    public int d() {
        return com.tencent.bugly.crashreport.common.info.d.b();
    }

    public void d(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        this.A = str.trim();
    }

    public java.lang.String e() {
        return !com.tencent.bugly.proguard.ha.b(this.i) ? this.i : this.I;
    }

    public void e(java.lang.String str) {
        this.q = str;
        if (!android.text.TextUtils.isEmpty(str)) {
            com.tencent.bugly.proguard.ha.c("deviceId", str);
        }
        synchronized (this.xa) {
            this.U.put("E8", str);
        }
    }

    public java.util.Map<java.lang.String, java.lang.String> f() {
        synchronized (this.xa) {
            if (this.U.size() <= 0) {
                return null;
            }
            return new java.util.HashMap(this.U);
        }
    }

    public void f(java.lang.String str) {
        com.tencent.bugly.proguard.aa.c("change deviceModel，old:%s new:%s", this.o, str);
        this.o = str;
        if (android.text.TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.proguard.ha.c("deviceModel", str);
    }

    public java.util.Map<java.lang.String, java.lang.String> g() {
        synchronized (this.ua) {
            if (this.V.size() <= 0) {
                return null;
            }
            return new java.util.HashMap(this.V);
        }
    }

    public synchronized void g(java.lang.String str) {
        this.s = "" + str;
    }

    public java.util.Map<java.lang.String, java.lang.String> h() {
        synchronized (this.ta) {
            if (this.T.size() <= 0) {
                return null;
            }
            return new java.util.HashMap(this.T);
        }
    }

    public synchronized void h(java.lang.String str) {
        this.t = "" + str;
    }

    public java.lang.String i() {
        if (this.E == null) {
            this.E = com.tencent.bugly.crashreport.common.info.d.c();
        }
        return this.E;
    }

    public void i(java.lang.String str) {
        synchronized (this.wa) {
            if (str == null) {
                str = "10000";
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("");
            sb.append(str);
            this.r = sb.toString();
        }
    }

    @java.lang.Deprecated
    public java.lang.String j() {
        return "";
    }

    public java.lang.String k() {
        java.lang.String str = this.q;
        if (str != null) {
            return str;
        }
        java.lang.String strB = com.tencent.bugly.proguard.ha.b("deviceId", (java.lang.String) null);
        this.q = strB;
        if (strB != null) {
            return strB;
        }
        java.lang.String strC = c();
        this.q = strC;
        if (android.text.TextUtils.isEmpty(strC)) {
            this.q = m();
        }
        java.lang.String str2 = this.q;
        if (str2 == null) {
            return "";
        }
        com.tencent.bugly.proguard.ha.c("deviceId", str2);
        return this.q;
    }

    public synchronized java.lang.String l() {
        java.lang.String str = this.o;
        if (str != null) {
            return str;
        }
        java.lang.String strB = com.tencent.bugly.proguard.ha.b("deviceModel", (java.lang.String) null);
        this.o = strB;
        if (strB != null) {
            com.tencent.bugly.proguard.aa.a("collect device model from sp:%s", strB);
            return this.o;
        }
        if (!this.D) {
            com.tencent.bugly.proguard.aa.a("not allow collect device model", new java.lang.Object[0]);
            return "fail";
        }
        java.lang.String strD = com.tencent.bugly.crashreport.common.info.d.d();
        this.o = strD;
        com.tencent.bugly.proguard.aa.a("collect device model:%s", strD);
        com.tencent.bugly.proguard.ha.c("deviceModel", this.o);
        return this.o;
    }

    public java.lang.String m() {
        java.lang.String string = java.util.UUID.randomUUID().toString();
        return !com.tencent.bugly.proguard.ha.b(string) ? string.replaceAll("-", "") : string;
    }

    public java.lang.Boolean o() {
        if (this.K == null) {
            this.K = java.lang.Boolean.valueOf(com.tencent.bugly.crashreport.common.info.d.o());
        }
        return this.K;
    }

    public synchronized java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> p() {
        java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> map;
        map = this.O;
        java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> map2 = this.P;
        if (map2 != null) {
            map.putAll(map2);
        }
        return map;
    }

    public synchronized java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> q() {
        java.util.Map<java.lang.String, com.tencent.bugly.crashreport.common.info.PlugInBean> map = this.C;
        if (map != null && map.size() > 0) {
            java.util.HashMap map2 = new java.util.HashMap(this.C.size());
            map2.putAll(this.C);
            return map2;
        }
        return null;
    }

    public synchronized java.lang.String r() {
        return this.t;
    }

    public java.lang.String s() {
        if (this.L == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("");
            sbO.append(com.tencent.bugly.crashreport.common.info.d.c(this.f963c));
            java.lang.String string = sbO.toString();
            this.L = string;
            com.tencent.bugly.proguard.aa.c("ROM ID: %s", string);
        }
        return this.L;
    }

    public java.lang.String t() {
        if (!android.text.TextUtils.isEmpty(this.A)) {
            com.tencent.bugly.proguard.aa.a("get cpu type from so:%s", this.A);
            return this.A;
        }
        if (android.text.TextUtils.isEmpty(this.B)) {
            return "unknown";
        }
        com.tencent.bugly.proguard.aa.a("get cpu type from lib dir:%s", this.B);
        return this.B;
    }

    public java.lang.String u() {
        return this.l;
    }

    public int v() {
        return this.S;
    }

    public java.lang.String w() {
        java.lang.String str;
        synchronized (this.ra) {
            if (this.f964d == null) {
                K();
            }
            str = this.f964d;
        }
        return str;
    }

    public long x() {
        if (this.x <= 0) {
            this.x = com.tencent.bugly.crashreport.common.info.d.i();
        }
        return this.x;
    }

    public long y() {
        if (this.w <= 0) {
            this.w = com.tencent.bugly.crashreport.common.info.d.k();
        }
        return this.w;
    }

    public long z() {
        if (this.y <= 0) {
            this.y = com.tencent.bugly.crashreport.common.info.d.l();
        }
        return this.y;
    }
}
