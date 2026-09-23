package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public abstract class a {
    public final int a = 10;
    public final int b = 100;

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.String f1529c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.umeng.commonsdk.statistics.proto.a> f1530d;

    /* renamed from: e, reason: collision with root package name */
    public com.umeng.commonsdk.statistics.proto.b f1531e;

    public a(java.lang.String str) {
        this.f1529c = str;
    }

    private boolean g() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f1531e;
        java.lang.String strB = bVar == null ? null : bVar.b();
        int iH = bVar == null ? 0 : bVar.h();
        java.lang.String strA = a(f());
        if (strA == null || strA.equals(strB)) {
            return false;
        }
        if (bVar == null) {
            bVar = new com.umeng.commonsdk.statistics.proto.b();
        }
        bVar.a(strA);
        bVar.a(java.lang.System.currentTimeMillis());
        bVar.a(iH + 1);
        com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
        aVar.a(this.f1529c);
        aVar.c(strA);
        aVar.b(strB);
        aVar.a(bVar.e());
        if (this.f1530d == null) {
            this.f1530d = new java.util.ArrayList(2);
        }
        this.f1530d.add(aVar);
        if (this.f1530d.size() > 10) {
            this.f1530d.remove(0);
        }
        this.f1531e = bVar;
        return true;
    }

    public java.lang.String a(java.lang.String str) {
        if (str == null) {
            return null;
        }
        java.lang.String strTrim = str.trim();
        if (strTrim.length() == 0 || "0".equals(strTrim) || "unknown".equals(strTrim.toLowerCase(java.util.Locale.US))) {
            return null;
        }
        return strTrim;
    }

    public void a(com.umeng.commonsdk.statistics.proto.b bVar) {
        this.f1531e = bVar;
    }

    public void a(com.umeng.commonsdk.statistics.proto.c cVar) {
        this.f1531e = cVar.c().get(this.f1529c);
        java.util.List<com.umeng.commonsdk.statistics.proto.a> listH = cVar.h();
        if (listH == null || listH.size() <= 0) {
            return;
        }
        if (this.f1530d == null) {
            this.f1530d = new java.util.ArrayList();
        }
        for (com.umeng.commonsdk.statistics.proto.a aVar : listH) {
            if (this.f1529c.equals(aVar.a)) {
                this.f1530d.add(aVar);
            }
        }
    }

    public void a(java.util.List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.f1530d = list;
    }

    public boolean a() {
        return g();
    }

    public java.lang.String b() {
        return this.f1529c;
    }

    public boolean c() {
        com.umeng.commonsdk.statistics.proto.b bVar = this.f1531e;
        return bVar == null || bVar.h() <= 100;
    }

    public com.umeng.commonsdk.statistics.proto.b d() {
        return this.f1531e;
    }

    public java.util.List<com.umeng.commonsdk.statistics.proto.a> e() {
        return this.f1530d;
    }

    public abstract java.lang.String f();
}
