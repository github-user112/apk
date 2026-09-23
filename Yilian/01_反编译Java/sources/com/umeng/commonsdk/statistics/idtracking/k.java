package com.umeng.commonsdk.statistics.idtracking;

/* loaded from: classes.dex */
public class k extends com.umeng.commonsdk.statistics.idtracking.a {
    public static final java.lang.String a = "serial";

    public k() {
        super(a);
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public java.lang.String f() {
        return com.umeng.commonsdk.statistics.common.DeviceConfig.getSerial();
    }
}
