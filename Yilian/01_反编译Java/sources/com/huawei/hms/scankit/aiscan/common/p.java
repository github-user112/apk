package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class p implements java.lang.Comparable<com.huawei.hms.scankit.aiscan.common.p> {
    public com.huawei.hms.scankit.p.C0187ob a;
    public int b;

    public p(com.huawei.hms.scankit.p.C0187ob c0187ob, int i) {
        this.a = c0187ob;
        this.b = i;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(com.huawei.hms.scankit.aiscan.common.p pVar) {
        return java.lang.Float.compare(pVar.a.h() + (-pVar.a.g()), this.a.h() + (-this.a.g()));
    }
}
