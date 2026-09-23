package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class d extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "idmd5";
    public android.content.Context b;

    public d(android.content.Context context) {
        super("idmd5");
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        return com.umeng.commonsdk.statistics.common.DeviceConfig.getDeviceIdUmengMD5(this.b);
    }
}
