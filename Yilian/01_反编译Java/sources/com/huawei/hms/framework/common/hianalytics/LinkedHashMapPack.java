package com.huawei.hms.framework.common.hianalytics;

/* loaded from: classes.dex */
public class LinkedHashMapPack {
    public java.util.LinkedHashMap<java.lang.String, java.lang.String> map = new java.util.LinkedHashMap<>();

    public java.util.LinkedHashMap<java.lang.String, java.lang.String> getAll() {
        return this.map;
    }

    public com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack put(java.lang.String str, long j) {
        if (str != null) {
            this.map.put(str, "" + j);
        }
        return this;
    }

    public com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack put(java.lang.String str, java.lang.String str2) {
        if (str != null && str2 != null) {
            this.map.put(str, str2);
        }
        return this;
    }

    public com.huawei.hms.framework.common.hianalytics.LinkedHashMapPack put(java.lang.String str, boolean z) {
        java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap;
        java.lang.String str2;
        if (str != null) {
            if (z) {
                linkedHashMap = this.map;
                str2 = "1";
            } else {
                linkedHashMap = this.map;
                str2 = "0";
            }
            linkedHashMap.put(str, str2);
        }
        return this;
    }
}
