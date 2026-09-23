package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.xc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0232xc {
    public final boolean a;

    public C0232xc(boolean z) {
        this.a = z;
    }

    public void a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        if (!this.a || zVarArr == null || zVarArr.length < 3) {
            return;
        }
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[0];
        zVarArr[0] = zVarArr[2];
        zVarArr[2] = zVar;
    }
}
