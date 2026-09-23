package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public abstract class BeforeFilter implements com.alibaba.fastjson.serializer.SerializeFilter {
    public static final java.lang.ThreadLocal<com.alibaba.fastjson.serializer.JSONSerializer> serializerLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<java.lang.Character> seperatorLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.Character COMMA = ',';

    public final char writeBefore(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, char c2) {
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer2 = serializerLocal.get();
        serializerLocal.set(jSONSerializer);
        seperatorLocal.set(java.lang.Character.valueOf(c2));
        writeBefore(obj);
        serializerLocal.set(jSONSerializer2);
        return seperatorLocal.get().charValue();
    }

    public abstract void writeBefore(java.lang.Object obj);

    public final void writeKeyValue(java.lang.String str, java.lang.Object obj) {
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = serializerLocal.get();
        char cCharValue = seperatorLocal.get().charValue();
        boolean zContainsKey = jSONSerializer.references.containsKey(obj);
        jSONSerializer.writeKeyValue(cCharValue, str, obj);
        if (!zContainsKey) {
            jSONSerializer.references.remove(obj);
        }
        if (cCharValue != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
