package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class k implements java.util.concurrent.Callable<com.huawei.hms.framework.network.grs.c.f> {
    public final /* synthetic */ com.huawei.hms.framework.network.grs.c.b.c a;
    public final /* synthetic */ java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.a.c f328c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.c.m f329d;

    public k(com.huawei.hms.framework.network.grs.c.m mVar, com.huawei.hms.framework.network.grs.c.b.c cVar, java.lang.String str, com.huawei.hms.framework.network.grs.a.c cVar2) {
        this.f329d = mVar;
        this.a = cVar;
        this.b = str;
        this.f328c = cVar2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public com.huawei.hms.framework.network.grs.c.f call() {
        return new com.huawei.hms.framework.network.grs.c.e(this.a, this.f329d.f334d).a(this.f329d.a, this.b, this.f328c);
    }
}
