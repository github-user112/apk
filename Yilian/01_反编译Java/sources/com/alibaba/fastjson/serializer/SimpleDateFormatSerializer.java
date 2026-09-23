package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class SimpleDateFormatSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public final java.lang.String pattern;

    public SimpleDateFormatSerializer(java.lang.String str) {
        this.pattern = str;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        if (obj == null) {
            jSONSerializer.out.writeNull();
            return;
        }
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(this.pattern, jSONSerializer.locale);
        simpleDateFormat.setTimeZone(jSONSerializer.timeZone);
        jSONSerializer.write(simpleDateFormat.format((java.util.Date) obj));
    }
}
