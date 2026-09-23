package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class f extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "imei";
    public android.content.Context b;

    public f(android.content.Context context) {
        super(a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        return com.umeng.commonsdk.statistics.common.DeviceConfig.getImeiNew(this.b);
    }
}
