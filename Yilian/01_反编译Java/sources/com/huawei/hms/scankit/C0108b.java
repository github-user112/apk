package com.huawei.hms.scankit;

/* renamed from: com.huawei.hms.scankit.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0108b implements com.huawei.hms.scankit.p.Aa.c {
    public final /* synthetic */ com.huawei.hms.scankit.C0111e a;

    public C0108b(com.huawei.hms.scankit.C0111e c0111e) {
        this.a = c0111e;
    }

    @Override // com.huawei.hms.scankit.p.Aa.c
    public void a() {
    }

    @Override // com.huawei.hms.scankit.p.Aa.c
    public void b() {
    }

    @Override // com.huawei.hms.scankit.p.Aa.c
    public void c() {
        if (this.a.G != null) {
            try {
                this.a.G.onError(-1000);
            } catch (android.os.RemoteException unused) {
                com.huawei.hms.scankit.util.a.b(com.huawei.hms.scankit.C0111e.a, "RemoteException");
            }
        }
    }
}
