package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class d implements java.util.concurrent.Callable<com.huawei.hms.framework.network.grs.c.f> {
    public final /* synthetic */ java.util.concurrent.ExecutorService a;
    public final /* synthetic */ java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.a.c f314c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.huawei.hms.framework.network.grs.c.e f315d;

    public d(com.huawei.hms.framework.network.grs.c.e eVar, java.util.concurrent.ExecutorService executorService, java.lang.String str, com.huawei.hms.framework.network.grs.a.c cVar) {
        this.f315d = eVar;
        this.a = executorService;
        this.b = str;
        this.f314c = cVar;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.concurrent.Callable
    public com.huawei.hms.framework.network.grs.c.f call() {
        return this.f315d.b(this.a, this.b, this.f314c);
    }
}
