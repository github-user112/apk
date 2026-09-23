package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JSONLibDataFormatSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        if (obj == null) {
            jSONSerializer.out.writeNull();
            return;
        }
        java.util.Date date = (java.util.Date) obj;
        com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject();
        jSONObject.put("date", (java.lang.Object) java.lang.Integer.valueOf(date.getDate()));
        jSONObject.put("day", (java.lang.Object) java.lang.Integer.valueOf(date.getDay()));
        jSONObject.put("hours", (java.lang.Object) java.lang.Integer.valueOf(date.getHours()));
        jSONObject.put("minutes", (java.lang.Object) java.lang.Integer.valueOf(date.getMinutes()));
        jSONObject.put("month", (java.lang.Object) java.lang.Integer.valueOf(date.getMonth()));
        jSONObject.put("seconds", (java.lang.Object) java.lang.Integer.valueOf(date.getSeconds()));
        jSONObject.put(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME, (java.lang.Object) java.lang.Long.valueOf(date.getTime()));
        jSONObject.put("timezoneOffset", (java.lang.Object) java.lang.Integer.valueOf(date.getTimezoneOffset()));
        jSONObject.put("year", (java.lang.Object) java.lang.Integer.valueOf(date.getYear()));
        jSONSerializer.write(jSONObject);
    }
}
