package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.yd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0238yd {
    public static final com.huawei.hms.scankit.p.AbstractC0238yd a = new com.huawei.hms.scankit.p.C0228wd(null, 0, 0);
    public final com.huawei.hms.scankit.p.AbstractC0238yd b;

    public AbstractC0238yd(com.huawei.hms.scankit.p.AbstractC0238yd abstractC0238yd) {
        this.b = abstractC0238yd;
    }

    public final com.huawei.hms.scankit.p.AbstractC0238yd a() {
        return this.b;
    }

    public final com.huawei.hms.scankit.p.AbstractC0238yd a(int i, int i2) {
        return new com.huawei.hms.scankit.p.C0228wd(this, i, i2);
    }

    public abstract void a(com.huawei.hms.scankit.p.C0117ab c0117ab, byte[] bArr);

    public final com.huawei.hms.scankit.p.AbstractC0238yd b(int i, int i2) {
        return new com.huawei.hms.scankit.p.C0213td(this, i, i2);
    }
}
