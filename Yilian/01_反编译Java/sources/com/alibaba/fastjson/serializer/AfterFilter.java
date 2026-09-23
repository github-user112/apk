package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public abstract class AfterFilter implements com.alibaba.fastjson.serializer.SerializeFilter {
    public static final java.lang.ThreadLocal<com.alibaba.fastjson.serializer.JSONSerializer> serializerLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<java.lang.Character> seperatorLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.Character COMMA = ',';

    public final char writeAfter(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, char c2) {
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer2 = serializerLocal.get();
        serializerLocal.set(jSONSerializer);
        seperatorLocal.set(java.lang.Character.valueOf(c2));
        writeAfter(obj);
        serializerLocal.set(jSONSerializer2);
        return seperatorLocal.get().charValue();
    }

    public abstract void writeAfter(java.lang.Object obj);

    public final void writeKeyValue(java.lang.String str, java.lang.Object obj) {
        java.util.IdentityHashMap<java.lang.Object, com.alibaba.fastjson.serializer.SerialContext> identityHashMap;
        com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer = serializerLocal.get();
        char cCharValue = seperatorLocal.get().charValue();
        boolean zContainsReference = jSONSerializer.containsReference(obj);
        jSONSerializer.writeKeyValue(cCharValue, str, obj);
        if (!zContainsReference && (identityHashMap = jSONSerializer.references) != null) {
            identityHashMap.remove(obj);
        }
        if (cCharValue != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
