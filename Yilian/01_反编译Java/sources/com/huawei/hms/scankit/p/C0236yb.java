package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.yb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0236yb extends com.huawei.hms.scankit.p.Ab {
    public static final com.huawei.hms.scankit.p.Ab[] a = new com.huawei.hms.scankit.p.Ab[0];
    public final com.huawei.hms.scankit.p.Ab[] b;

    public C0236yb(java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        java.util.Collection collection = map == null ? null : (java.util.Collection) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (collection != null) {
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8) || collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0241zb(map));
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_39)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0211tb(false));
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_93)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0216ub());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODE_128)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0206sb());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0231xb());
            }
            if (collection.contains(com.huawei.hms.scankit.aiscan.common.BarcodeFormat.CODABAR)) {
                arrayList.add(new com.huawei.hms.scankit.p.C0201rb());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new com.huawei.hms.scankit.p.C0241zb(map));
            arrayList.add(new com.huawei.hms.scankit.p.C0211tb());
            arrayList.add(new com.huawei.hms.scankit.p.C0201rb());
            arrayList.add(new com.huawei.hms.scankit.p.C0216ub());
            arrayList.add(new com.huawei.hms.scankit.p.C0206sb());
            arrayList.add(new com.huawei.hms.scankit.p.C0231xb());
        }
        this.b = (com.huawei.hms.scankit.p.Ab[]) arrayList.toArray(a);
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (com.huawei.hms.scankit.p.Ab ab : this.b) {
            try {
                return ab.a(i, c0117ab, map);
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }
}
