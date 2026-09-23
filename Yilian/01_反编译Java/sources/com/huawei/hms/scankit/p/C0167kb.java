package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.kb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0167kb {
    public com.huawei.hms.scankit.p.C0182nb b = null;
    public final com.huawei.hms.scankit.aiscan.common.u a = new com.huawei.hms.scankit.aiscan.common.u(com.huawei.hms.scankit.aiscan.common.h.f406f);

    private void a(byte[] bArr, int i) throws java.lang.Exception {
        int length = bArr.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        try {
            this.a.a(iArr, bArr.length - i);
            for (int i3 = 0; i3 < i; i3++) {
                bArr[i3] = (byte) iArr[i3];
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public com.huawei.hms.scankit.aiscan.common.C0106e a(com.huawei.hms.scankit.p.C0122bb c0122bb, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0142fb c0142fb = new com.huawei.hms.scankit.p.C0142fb(c0122bb);
        com.huawei.hms.scankit.p.C0182nb c0182nbA = c0142fb.a();
        this.b = c0182nbA;
        com.huawei.hms.scankit.p.C0147gb[] c0147gbArrA = com.huawei.hms.scankit.p.C0147gb.a(c0142fb.b(), c0182nbA);
        int iB = 0;
        for (com.huawei.hms.scankit.p.C0147gb c0147gb : c0147gbArrA) {
            iB += c0147gb.b();
        }
        byte[] bArr = new byte[iB];
        int length = c0147gbArrA.length;
        for (int i = 0; i < length; i++) {
            com.huawei.hms.scankit.p.C0147gb c0147gb2 = c0147gbArrA[i];
            byte[] bArrA = c0147gb2.a();
            int iB2 = c0147gb2.b();
            a(bArrA, iB2);
            for (int i2 = 0; i2 < iB2; i2++) {
                bArr[(i2 * length) + i] = bArrA[i2];
            }
        }
        return com.huawei.hms.scankit.p.C0162jb.a(bArr, map);
    }

    public com.huawei.hms.scankit.p.C0182nb a() {
        return this.b;
    }
}
