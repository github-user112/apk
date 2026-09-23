package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class l implements java.lang.Runnable {
    public final /* synthetic */ com.huawei.hms.framework.network.grs.c.b.c a;
    public final /* synthetic */ java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.a.c f330c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.b f331d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.c.m f332e;

    public l(com.huawei.hms.framework.network.grs.c.m mVar, com.huawei.hms.framework.network.grs.c.b.c cVar, java.lang.String str, com.huawei.hms.framework.network.grs.a.c cVar2, com.huawei.hms.framework.network.grs.b bVar) {
        this.f332e = mVar;
        this.a = cVar;
        this.b = str;
        this.f330c = cVar2;
        this.f331d = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.huawei.hms.framework.network.grs.c.m mVar = this.f332e;
        mVar.a(mVar.a(this.a, this.b, this.f330c), this.f331d);
    }
}
