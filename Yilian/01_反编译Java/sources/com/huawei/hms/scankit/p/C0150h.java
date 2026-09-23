package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0150h implements com.huawei.hms.scankit.p.InterfaceRunnableC0155i {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f728c;

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.huawei.hms.scankit.p.J> f729d;

    public C0150h(java.util.List<com.huawei.hms.scankit.p.J> list, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.a = str;
        this.b = str2;
        this.f728c = str3;
        this.f729d = list;
    }

    private void a() {
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "backup_event", com.huawei.hms.scankit.p.AbstractC0180n.a(this.a, this.f728c, this.b));
    }

    @Override // java.lang.Runnable
    public void run() {
        java.util.List<com.huawei.hms.scankit.p.J> list = this.f729d;
        if (list == null || list.size() == 0) {
            com.huawei.hms.scankit.p.T.b("FailedEventHandlerTask", "failed events is empty");
            return;
        }
        if (com.huawei.hms.scankit.p.C0165k.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "cached_v2_1", com.huawei.hms.scankit.p.AbstractC0120b.i() * com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES)) {
            java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("The cacheFile is full,Can not writing data! reqID:");
            sbA.append(this.b);
            com.huawei.hms.scankit.p.T.c("FailedEventHandlerTask", sbA.toString());
            return;
        }
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0180n.a(this.a, this.f728c);
        java.util.List<com.huawei.hms.scankit.p.J> list2 = com.huawei.hms.scankit.p.Q.b(com.huawei.hms.scankit.p.AbstractC0120b.a(), "cached_v2_1", strA).get(strA);
        if (list2 != null && list2.size() != 0) {
            this.f729d.addAll(list2);
        }
        org.json.JSONArray jSONArray = new org.json.JSONArray();
        java.util.Iterator<com.huawei.hms.scankit.p.J> it = this.f729d.iterator();
        while (it.hasNext()) {
            try {
                jSONArray.put(it.next().d());
            } catch (org.json.JSONException unused) {
                com.huawei.hms.scankit.p.T.c("FailedEventHandlerTask", "event to json error");
            }
        }
        java.lang.String string = jSONArray.toString();
        if (string.length() > com.huawei.hms.scankit.p.AbstractC0120b.h() * com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES) {
            com.huawei.hms.scankit.p.T.c("FailedEventHandlerTask", "this failed data is too long,can not writing it");
            this.f729d = null;
            return;
        }
        java.lang.StringBuilder sbA2 = com.huawei.hms.scankit.p.Oa.a("data send failed, write to cache file...reqID:");
        sbA2.append(this.b);
        com.huawei.hms.scankit.p.T.b("FailedEventHandlerTask", sbA2.toString());
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "cached_v2_1", strA, string);
        a();
    }
}
