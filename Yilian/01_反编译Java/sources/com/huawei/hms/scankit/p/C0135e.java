package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0135e implements com.huawei.hms.scankit.p.InterfaceRunnableC0155i {
    public byte[] a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f703c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f704d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f705e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.List<com.huawei.hms.scankit.p.J> f706f;

    public C0135e(byte[] bArr, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.util.List<com.huawei.hms.scankit.p.J> list) {
        this.a = (byte[]) bArr.clone();
        this.b = str;
        this.f703c = str2;
        this.f705e = str3;
        this.f704d = str4;
        this.f706f = list;
    }

    private java.util.Map<java.lang.String, java.lang.String> a() {
        return com.huawei.hms.scankit.p.C0166ka.c(this.f703c, this.f705e, this.f704d);
    }

    private void b() {
        com.huawei.hms.scankit.p.C0160j.a.a(new com.huawei.hms.scankit.p.C0150h(this.f706f, this.f703c, this.f704d, this.f705e));
    }

    @Override // java.lang.Runnable
    public void run() {
        com.huawei.hms.scankit.p.T.b("DataSendTask", "send data running");
        int iA = com.huawei.hms.scankit.p.W.a(this.b, this.a, a(), "POST").a();
        if (iA != 200) {
            b();
            return;
        }
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("events PostRequest sendevent TYPE : %s, TAG : %s, resultCode: %d ,reqID:");
        sbA.append(this.f704d);
        com.huawei.hms.scankit.p.T.a("DataSendTask", sbA.toString(), this.f705e, this.f703c, java.lang.Integer.valueOf(iA));
    }
}
