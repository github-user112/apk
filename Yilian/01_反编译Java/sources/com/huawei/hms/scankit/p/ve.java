package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class ve implements com.huawei.hms.scankit.p.te {
    public java.util.List<com.huawei.hms.scankit.p.te> a = new java.util.ArrayList();

    @Override // com.huawei.hms.scankit.p.te
    public void a(com.huawei.hms.scankit.p.qe qeVar, long j) {
        java.util.Iterator<com.huawei.hms.scankit.p.te> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(qeVar, j);
        }
    }

    public void a(com.huawei.hms.scankit.p.te teVar) {
        if (this.a == null) {
            this.a = new java.util.ArrayList();
        }
        this.a.add(teVar);
    }
}
