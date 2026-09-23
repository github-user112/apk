package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class v {
    public final com.huawei.hms.scankit.aiscan.common.h a;
    public final java.util.List<com.huawei.hms.scankit.aiscan.common.i> b;

    public v(com.huawei.hms.scankit.aiscan.common.h hVar) {
        this.a = hVar;
        java.util.ArrayList arrayList = new java.util.ArrayList();
        this.b = arrayList;
        arrayList.add(new com.huawei.hms.scankit.aiscan.common.i(hVar, new int[]{1}));
    }

    private com.huawei.hms.scankit.aiscan.common.i a(int i) throws java.lang.Exception {
        if (i >= this.b.size()) {
            java.util.List<com.huawei.hms.scankit.aiscan.common.i> list = this.b;
            com.huawei.hms.scankit.aiscan.common.i iVarC = list.get(list.size() - 1);
            for (int size = this.b.size(); size <= i; size++) {
                com.huawei.hms.scankit.aiscan.common.h hVar = this.a;
                iVarC = iVarC.c(new com.huawei.hms.scankit.aiscan.common.i(hVar, new int[]{1, hVar.a(hVar.a() + (size - 1))}));
                this.b.add(iVarC);
            }
        }
        return this.b.get(i);
    }

    public void a(int[] iArr, int i) throws java.lang.Exception {
        if (i == 0) {
            try {
                throw new java.lang.IllegalArgumentException("No error correction bytes");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int length = iArr.length - i;
        if (length <= 0) {
            try {
                throw new java.lang.IllegalArgumentException("No data bytes provided");
            } catch (java.lang.Exception e3) {
                throw e3;
            }
        }
        com.huawei.hms.scankit.aiscan.common.i iVarA = a(i);
        int[] iArr2 = new int[length];
        java.lang.System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrA = new com.huawei.hms.scankit.aiscan.common.i(this.a, iArr2).a(i, 1).b(iVarA)[1].a();
        int length2 = i - iArrA.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        java.lang.System.arraycopy(iArrA, 0, iArr, length + length2, iArrA.length);
    }
}
