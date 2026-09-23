package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class m {
    public java.util.concurrent.ExecutorService a = com.huawei.hms.framework.common.ExecutorsUtils.newCachedThreadPool("GRS_RequestController-Task");
    public java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.c.b.b> b = new java.util.concurrent.ConcurrentHashMap(16);

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Object f333c = new java.lang.Object();

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.a f334d;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.huawei.hms.framework.network.grs.c.f fVar, com.huawei.hms.framework.network.grs.b bVar) {
        if (bVar != null) {
            if (fVar == null) {
                com.huawei.hms.framework.common.Logger.v("RequestController", "GrsResponse is null");
                bVar.a();
            } else {
                com.huawei.hms.framework.common.Logger.v("RequestController", "GrsResponse is not null");
                bVar.a(fVar);
            }
        }
    }

    public com.huawei.hms.framework.network.grs.c.f a(com.huawei.hms.framework.network.grs.c.b.c cVar, java.lang.String str, com.huawei.hms.framework.network.grs.a.c cVar2) {
        java.util.concurrent.Future<com.huawei.hms.framework.network.grs.c.f> futureSubmit;
        java.lang.String str2;
        java.lang.String str3;
        com.huawei.hms.framework.common.Logger.d("RequestController", "request to server with service name is: " + str);
        java.lang.String grsParasTag = cVar.b().getGrsParasTag(false, true, cVar.a());
        com.huawei.hms.framework.common.Logger.v("RequestController", "request spUrlKey: " + grsParasTag);
        synchronized (this.f333c) {
            if (!com.huawei.hms.framework.common.NetworkUtil.isNetworkAvailable(cVar.a())) {
                return null;
            }
            com.huawei.hms.framework.network.grs.d.d.a aVarA = com.huawei.hms.framework.network.grs.d.d.a(grsParasTag);
            com.huawei.hms.framework.network.grs.c.b.b bVar = this.b.get(grsParasTag);
            if (bVar == null || !bVar.b()) {
                if (aVarA != null && aVarA.a()) {
                    return null;
                }
                com.huawei.hms.framework.common.Logger.d("RequestController", "hitGrsRequestBean == null or request block is released.");
                futureSubmit = this.a.submit(new com.huawei.hms.framework.network.grs.c.k(this, cVar, str, cVar2));
                this.b.put(grsParasTag, new com.huawei.hms.framework.network.grs.c.b.b(futureSubmit));
            } else {
                futureSubmit = bVar.a();
            }
            try {
                return futureSubmit.get();
            } catch (java.lang.InterruptedException e2) {
                e = e2;
                str2 = "RequestController";
                str3 = "when check result, find InterruptedException, check others";
                com.huawei.hms.framework.common.Logger.w(str2, str3, e);
                return null;
            } catch (java.util.concurrent.CancellationException e3) {
                e = e3;
                str2 = "RequestController";
                str3 = "when check result, find CancellationException, check others";
                com.huawei.hms.framework.common.Logger.w(str2, str3, e);
                return null;
            } catch (java.util.concurrent.ExecutionException e4) {
                e = e4;
                str2 = "RequestController";
                str3 = "when check result, find ExecutionException, check others";
                com.huawei.hms.framework.common.Logger.w(str2, str3, e);
                return null;
            }
        }
    }

    public void a(com.huawei.hms.framework.network.grs.a.a aVar) {
        this.f334d = aVar;
    }

    public void a(com.huawei.hms.framework.network.grs.c.b.c cVar, com.huawei.hms.framework.network.grs.b bVar, java.lang.String str, com.huawei.hms.framework.network.grs.a.c cVar2) {
        this.a.execute(new com.huawei.hms.framework.network.grs.c.l(this, cVar, str, cVar2, bVar));
    }

    public void a(java.lang.String str) {
        synchronized (this.f333c) {
            this.b.remove(str);
        }
    }
}
