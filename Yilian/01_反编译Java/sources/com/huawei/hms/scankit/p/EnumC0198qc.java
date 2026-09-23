package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.qc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0198qc {
    L(1),
    M(0),
    Q(3),
    H(2);


    /* renamed from: e, reason: collision with root package name */
    public static final com.huawei.hms.scankit.p.EnumC0198qc[] f786e;

    /* renamed from: g, reason: collision with root package name */
    public final int f788g;

    static {
        com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc = H;
        com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc2 = L;
        f786e = new com.huawei.hms.scankit.p.EnumC0198qc[]{M, enumC0198qc2, enumC0198qc, Q};
    }

    EnumC0198qc(int i) {
        this.f788g = i;
    }

    public static com.huawei.hms.scankit.p.EnumC0198qc a(int i) throws java.lang.Exception {
        if (i >= 0) {
            com.huawei.hms.scankit.p.EnumC0198qc[] enumC0198qcArr = f786e;
            if (i < enumC0198qcArr.length) {
                return enumC0198qcArr[i];
            }
        }
        try {
            throw new java.lang.IllegalArgumentException();
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public int a() {
        return this.f788g;
    }
}
