package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Lc extends java.util.TimerTask {
    public final /* synthetic */ com.huawei.hms.scankit.p.Kc.b a;

    public Lc(com.huawei.hms.scankit.p.Kc.b bVar) {
        this.a = bVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        try {
            this.a.f566c = true;
            this.a.a();
        } catch (java.lang.Exception unused) {
            com.huawei.hms.scankit.util.a.b(this.a.a, "onLog Exception");
        }
    }
}
