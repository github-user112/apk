package com.huawei.hms.framework.network.grs.c.b;

/* loaded from: classes.dex */
public class b {
    public java.util.concurrent.Future<com.huawei.hms.framework.network.grs.c.f> a;
    public long b = android.os.SystemClock.elapsedRealtime();

    public b(java.util.concurrent.Future<com.huawei.hms.framework.network.grs.c.f> future) {
        this.a = future;
    }

    public java.util.concurrent.Future<com.huawei.hms.framework.network.grs.c.f> a() {
        return this.a;
    }

    public boolean b() {
        return android.os.SystemClock.elapsedRealtime() - this.b <= 300000;
    }
}
