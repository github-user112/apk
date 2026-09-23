package com.huawei.hms.mlsdk.common.internal.client.event;

/* loaded from: classes.dex */
public class MonitorResult {
    public static final java.lang.String SUCCESS = "SUCCESS";
    public static final java.lang.String ZOOM_NOT_SUPPORT = "ZOOM_NOT_SUPPORT";
    public java.lang.String code;
    public java.lang.Object data;
    public java.lang.String message;

    public static final com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult ofFailureResult(java.lang.String str) {
        return ofFailureResult(str, null, null);
    }

    public static final com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult ofFailureResult(java.lang.String str, java.lang.String str2) {
        return ofFailureResult(str, str2, null);
    }

    public static final com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult ofFailureResult(java.lang.String str, java.lang.String str2, java.lang.Object obj) {
        com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult monitorResult = new com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult();
        monitorResult.setCode(str);
        monitorResult.setMessage(str2);
        monitorResult.setData(obj);
        return monitorResult;
    }

    public static final com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult ofSuccessResult() {
        com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult monitorResult = new com.huawei.hms.mlsdk.common.internal.client.event.MonitorResult();
        monitorResult.setCode(SUCCESS);
        monitorResult.setMessage(null);
        monitorResult.setData(null);
        return monitorResult;
    }

    public java.lang.String getCode() {
        return this.code;
    }

    public java.lang.Object getData() {
        return this.data;
    }

    public java.lang.String getMessage() {
        return this.message;
    }

    public void setCode(java.lang.String str) {
        this.code = str;
    }

    public void setData(java.lang.Object obj) {
        this.data = obj;
    }

    public void setMessage(java.lang.String str) {
        this.message = str;
    }
}
