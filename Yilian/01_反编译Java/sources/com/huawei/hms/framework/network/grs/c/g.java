package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class g implements java.lang.Runnable {
    public final /* synthetic */ long a;
    public final /* synthetic */ android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ java.util.ArrayList f326c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ org.json.JSONArray f327d;

    public g(long j, android.content.Context context, java.util.ArrayList arrayList, org.json.JSONArray jSONArray) {
        this.a = j;
        this.b = context;
        this.f326c = arrayList;
        this.f327d = jSONArray;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        com.huawei.hms.framework.network.grs.c.b.a aVar = new com.huawei.hms.framework.network.grs.c.b.a();
        aVar.put("total_time", this.a);
        aVar.put(com.umeng.analytics.pro.ai.T, com.huawei.hms.framework.common.NetworkUtil.getNetworkType(this.b));
        java.util.Iterator it = this.f326c.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            com.huawei.hms.framework.network.grs.c.f fVar = (com.huawei.hms.framework.network.grs.c.f) it.next();
            if (fVar.m()) {
                aVar.put(com.huawei.hms.framework.network.grs.c.h.b(fVar));
                it.remove();
                z = true;
                break;
            }
        }
        if (!z && this.f326c.size() > 0) {
            java.util.ArrayList arrayList = this.f326c;
            com.huawei.hms.framework.network.grs.c.f fVar2 = (com.huawei.hms.framework.network.grs.c.f) arrayList.get(arrayList.size() - 1);
            aVar.put(com.huawei.hms.framework.network.grs.c.h.b(fVar2));
            this.f326c.remove(fVar2);
        }
        if (this.f326c.size() > 0) {
            java.util.Iterator it2 = this.f326c.iterator();
            while (it2.hasNext()) {
                this.f327d.put(new org.json.JSONObject(com.huawei.hms.framework.network.grs.c.h.b((com.huawei.hms.framework.network.grs.c.f) it2.next())));
            }
        }
        if (this.f327d.length() > 0) {
            aVar.put("failed_info", this.f327d.toString());
        }
        com.huawei.hms.framework.common.Logger.d("HaReportHelper", "grssdk report data to aiops is: %s", new org.json.JSONObject(aVar.get()));
        com.huawei.hms.framework.common.hianalytics.HianalyticsHelper.getInstance().onEvent(aVar.get(), "networkkit_grs");
    }
}
