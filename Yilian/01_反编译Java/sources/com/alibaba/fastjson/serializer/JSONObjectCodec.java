package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JSONObjectCodec implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.JSONObjectCodec instance = new com.alibaba.fastjson.serializer.JSONObjectCodec();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.lang.NoSuchFieldException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        com.alibaba.fastjson.serializer.MapSerializer mapSerializer = com.alibaba.fastjson.serializer.MapSerializer.instance;
        try {
            java.lang.reflect.Field declaredField = obj.getClass().getDeclaredField("map");
            if (java.lang.reflect.Modifier.isPrivate(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
            }
            mapSerializer.write(jSONSerializer, declaredField.get(obj), obj2, type, i);
        } catch (java.lang.Exception unused) {
            serializeWriter.writeNull();
        }
    }
}
