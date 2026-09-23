package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public final class bv extends com.umeng.analytics.pro.bj {

    public static class a implements com.umeng.analytics.pro.br {
        @Override // com.umeng.analytics.pro.br
        public com.umeng.analytics.pro.bp a(com.umeng.analytics.pro.cd cdVar) {
            return new com.umeng.analytics.pro.bv(cdVar);
        }
    }

    public bv(com.umeng.analytics.pro.cd cdVar) {
        super(cdVar);
    }

    public static java.util.BitSet a(byte[] bArr) {
        java.util.BitSet bitSet = new java.util.BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    public static byte[] b(java.util.BitSet bitSet, int i) {
        double d2 = i;
        java.lang.Double.isNaN(d2);
        int iCeil = (int) java.lang.Math.ceil(d2 / 8.0d);
        byte[] bArr = new byte[iCeil];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int i3 = (iCeil - (i2 / 8)) - 1;
                bArr[i3] = (byte) ((1 << (i2 % 8)) | bArr[i3]);
            }
        }
        return bArr;
    }

    @Override // com.umeng.analytics.pro.bp
    public java.lang.Class<? extends com.umeng.analytics.pro.bx> D() {
        return com.umeng.analytics.pro.ca.class;
    }

    public void a(java.util.BitSet bitSet, int i) {
        for (byte b : b(bitSet, i)) {
            a(b);
        }
    }

    public java.util.BitSet b(int i) {
        double d2 = i;
        java.lang.Double.isNaN(d2);
        int iCeil = (int) java.lang.Math.ceil(d2 / 8.0d);
        byte[] bArr = new byte[iCeil];
        for (int i2 = 0; i2 < iCeil; i2++) {
            bArr[i2] = u();
        }
        return a(bArr);
    }
}
