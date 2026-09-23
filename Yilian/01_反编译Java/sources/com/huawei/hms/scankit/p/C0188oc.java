package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.oc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0188oc {
    public final com.huawei.hms.scankit.aiscan.common.u a = new com.huawei.hms.scankit.aiscan.common.u(com.huawei.hms.scankit.aiscan.common.h.f405e);

    private com.huawei.hms.scankit.aiscan.common.C0106e a(com.huawei.hms.scankit.p.C0123bc c0123bc, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0242zc c0242zcD = c0123bc.d();
        com.huawei.hms.scankit.p.EnumC0198qc enumC0198qcB = c0123bc.c().b();
        com.huawei.hms.scankit.p.C0128cc[] c0128ccArrA = com.huawei.hms.scankit.p.C0128cc.a(c0123bc.b(), c0242zcD, enumC0198qcB);
        int iB = 0;
        for (com.huawei.hms.scankit.p.C0128cc c0128cc : c0128ccArrA) {
            iB += c0128cc.b();
        }
        byte[] bArr = new byte[iB];
        int i = 0;
        for (com.huawei.hms.scankit.p.C0128cc c0128cc2 : c0128ccArrA) {
            byte[] bArrA = c0128cc2.a();
            int iB2 = c0128cc2.b();
            a(bArrA, iB2);
            int i2 = 0;
            while (i2 < iB2) {
                bArr[i] = bArrA[i2];
                i2++;
                i++;
            }
        }
        return com.huawei.hms.scankit.p.C0183nc.a(bArr, c0242zcD, enumC0198qcB, map);
    }

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
        com.huawei.hms.scankit.p.C0123bc c0123bc = new com.huawei.hms.scankit.p.C0123bc(c0122bb);
        try {
            return a(c0123bc, map);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
            try {
                c0123bc.e();
                c0123bc.a(true);
                c0123bc.d();
                c0123bc.c();
                c0123bc.a();
                com.huawei.hms.scankit.aiscan.common.C0106e c0106eA = a(c0123bc, map);
                c0106eA.a(new com.huawei.hms.scankit.p.C0232xc(true));
                return c0106eA;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                throw e2;
            }
        }
    }
}
