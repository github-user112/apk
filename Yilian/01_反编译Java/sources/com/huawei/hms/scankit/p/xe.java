package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class xe implements com.huawei.hms.scankit.p.we {
    public java.util.List<com.huawei.hms.scankit.p.we> a = new java.util.ArrayList();

    @Override // com.huawei.hms.scankit.p.we
    public void a(com.huawei.hms.scankit.p.qe qeVar) {
        java.util.Iterator<com.huawei.hms.scankit.p.we> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(qeVar);
        }
    }

    public void a(com.huawei.hms.scankit.p.we weVar) {
        if (this.a == null) {
            this.a = new java.util.ArrayList();
        }
        this.a.add(weVar);
    }
}
