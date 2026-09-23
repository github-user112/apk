package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Ib {
    public final java.util.Map<java.lang.Integer, java.lang.Integer> a = new java.util.HashMap();

    public void a(int i) {
        java.lang.Integer num = this.a.get(java.lang.Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.a.put(java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(num.intValue() + 1));
    }

    public int[] a() {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int iIntValue = -1;
        for (java.util.Map.Entry<java.lang.Integer, java.lang.Integer> entry : this.a.entrySet()) {
            if (entry.getValue().intValue() > iIntValue) {
                iIntValue = entry.getValue().intValue();
                arrayList.clear();
            } else if (entry.getValue().intValue() == iIntValue) {
            }
            arrayList.add(entry.getKey());
        }
        return com.huawei.hms.scankit.p.Vb.a(arrayList);
    }
}
