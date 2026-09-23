package com.umeng.commonsdk.statistics.common;

/* loaded from: classes.dex */
public enum DeviceTypeEnum {
    IMEI(com.umeng.commonsdk.statistics.idtracking.f.a, com.umeng.commonsdk.statistics.idtracking.f.a),
    OAID(com.umeng.commonsdk.statistics.idtracking.i.f1538d, com.umeng.commonsdk.statistics.idtracking.i.f1538d),
    ANDROIDID(com.umeng.commonsdk.statistics.idtracking.b.a, com.umeng.commonsdk.statistics.idtracking.b.a),
    MAC(com.umeng.commonsdk.statistics.idtracking.g.a, com.umeng.commonsdk.statistics.idtracking.g.a),
    SERIALNO("serial_no", "serial_no"),
    IDFA(com.umeng.commonsdk.statistics.idtracking.c.a, com.umeng.commonsdk.statistics.idtracking.c.a),
    DEFAULT("null", "null");

    public java.lang.String description;
    public java.lang.String deviceIdType;

    DeviceTypeEnum(java.lang.String str, java.lang.String str2) {
        this.deviceIdType = str;
        this.description = str2;
    }

    public java.lang.String getDescription() {
        return this.description;
    }

    public java.lang.String getDeviceIdType() {
        return this.deviceIdType;
    }
}
