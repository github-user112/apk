package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class c implements java.util.concurrent.Callable<java.lang.Boolean> {
    public final /* synthetic */ android.content.Context a;
    public final /* synthetic */ com.huawei.hms.framework.network.grs.GrsBaseInfo b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.content.Context f301c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.d f302d;

    public c(com.huawei.hms.framework.network.grs.d dVar, android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, android.content.Context context2) {
        this.f302d = dVar;
        this.a = context;
        this.b = grsBaseInfo;
        this.f301c = context2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public java.lang.Boolean call() throws java.lang.NumberFormatException {
        this.f302d.f339g = new com.huawei.hms.framework.network.grs.c.m();
        this.f302d.i = new com.huawei.hms.framework.network.grs.a.c(this.a, "share_pre_grs_conf_");
        this.f302d.j = new com.huawei.hms.framework.network.grs.a.c(this.a, "share_pre_grs_services_");
        com.huawei.hms.framework.network.grs.d dVar = this.f302d;
        dVar.h = new com.huawei.hms.framework.network.grs.a.a(dVar.i, this.f302d.j, this.f302d.f339g);
        com.huawei.hms.framework.network.grs.d dVar2 = this.f302d;
        dVar2.k = new com.huawei.hms.framework.network.grs.a(dVar2.f335c, this.f302d.h, this.f302d.f339g, this.f302d.j);
        new com.huawei.hms.framework.network.grs.b.b(this.a, this.b, true).a(this.b);
        java.lang.String strC = new com.huawei.hms.framework.network.grs.c.b.c(this.b, this.a).c();
        com.huawei.hms.framework.common.Logger.v(com.huawei.hms.framework.network.grs.d.a, "scan serviceSet is:" + strC);
        java.lang.String strA = this.f302d.j.a("services", "");
        java.lang.String strA2 = com.huawei.hms.framework.network.grs.c.n.a(strA, strC);
        if (!android.text.TextUtils.isEmpty(strA2)) {
            this.f302d.j.b("services", strA2);
            com.huawei.hms.framework.common.Logger.v(com.huawei.hms.framework.network.grs.d.a, "postList is:" + strA2 + " currentServices:" + strA);
            if (!strA2.equals(strA)) {
                this.f302d.f339g.a(this.f302d.f335c.getGrsParasKey(false, true, this.a));
                this.f302d.f339g.a(new com.huawei.hms.framework.network.grs.c.b.c(this.b, this.f301c), null, null, this.f302d.j);
            }
        }
        com.huawei.hms.framework.network.grs.d dVar3 = this.f302d;
        dVar3.a((java.util.Map<java.lang.String, ?>) dVar3.i.a());
        this.f302d.h.b(this.b, this.a);
        return java.lang.Boolean.valueOf(this.f302d.f336d = true);
    }
}
