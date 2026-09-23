package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Sc extends java.lang.Thread {
    public final /* synthetic */ com.huawei.hms.scankit.p.Tc a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Sc(com.huawei.hms.scankit.p.Tc tc, java.lang.String str) {
        super(str);
        this.a = tc;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.a.d();
    }
}
