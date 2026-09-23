package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.zb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0241zb extends com.huawei.hms.scankit.p.Ab {
    public final com.huawei.hms.scankit.p.Fb[] a;

    /* JADX WARN: Removed duplicated region for block: B:17:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0241zb(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> r3) {
        /*
            r2 = this;
            r2.<init>()
            if (r3 != 0) goto L7
            r3 = 0
            goto Lf
        L7:
            com.huawei.hms.scankit.aiscan.common.d r0 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS
            java.lang.Object r3 = r3.get(r0)
            java.util.Collection r3 = (java.util.Collection) r3
        Lf:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            if (r3 == 0) goto L55
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L27
            com.huawei.hms.scankit.p.vb r1 = new com.huawei.hms.scankit.p.vb
            r1.<init>()
        L23:
            r0.add(r1)
            goto L35
        L27:
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L35
            com.huawei.hms.scankit.p.Bb r1 = new com.huawei.hms.scankit.p.Bb
            r1.<init>()
            goto L23
        L35:
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8
            boolean r1 = r3.contains(r1)
            if (r1 == 0) goto L45
            com.huawei.hms.scankit.p.wb r1 = new com.huawei.hms.scankit.p.wb
            r1.<init>()
            r0.add(r1)
        L45:
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E
            boolean r3 = r3.contains(r1)
            if (r3 == 0) goto L55
            com.huawei.hms.scankit.p.Gb r3 = new com.huawei.hms.scankit.p.Gb
            r3.<init>()
            r0.add(r3)
        L55:
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L73
            com.huawei.hms.scankit.p.vb r3 = new com.huawei.hms.scankit.p.vb
            r3.<init>()
            r0.add(r3)
            com.huawei.hms.scankit.p.wb r3 = new com.huawei.hms.scankit.p.wb
            r3.<init>()
            r0.add(r3)
            com.huawei.hms.scankit.p.Gb r3 = new com.huawei.hms.scankit.p.Gb
            r3.<init>()
            r0.add(r3)
        L73:
            int r3 = r0.size()
            com.huawei.hms.scankit.p.Fb[] r3 = new com.huawei.hms.scankit.p.Fb[r3]
            java.lang.Object[] r3 = r0.toArray(r3)
            com.huawei.hms.scankit.p.Fb[] r3 = (com.huawei.hms.scankit.p.Fb[]) r3
            r2.a = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.C0241zb.<init>(java.util.Map):void");
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.util.Iterator<int[]> it = com.huawei.hms.scankit.p.Fb.b(c0117ab).iterator();
        while (it.hasNext()) {
            int[] next = it.next();
            for (com.huawei.hms.scankit.p.Fb fb : this.a) {
                try {
                    com.huawei.hms.scankit.aiscan.common.x xVarA = fb.a(i, c0117ab, next, map);
                    boolean z = xVarA.b() == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13 && xVarA.i().charAt(0) == '0';
                    java.util.Collection collection = map == null ? null : (java.util.Collection) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS);
                    return (z && (collection == null || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A))) ? new com.huawei.hms.scankit.aiscan.common.x(xVarA.i().substring(1), xVarA.g(), xVarA.h(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A) : xVarA;
                } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                }
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }
}
