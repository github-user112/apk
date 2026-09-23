package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class EnumerationSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.EnumerationSerializer instance = new com.alibaba.fastjson.serializer.EnumerationSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.lang.reflect.Type type2 = null;
        int i2 = 0;
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && (type instanceof java.lang.reflect.ParameterizedType)) {
            type2 = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments()[0];
        }
        java.util.Enumeration enumeration = (java.util.Enumeration) obj;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append('[');
            while (enumeration.hasMoreElements()) {
                java.lang.Object objNextElement = enumeration.nextElement();
                int i3 = i2 + 1;
                if (i2 != 0) {
                    serializeWriter.append(',');
                }
                if (objNextElement == null) {
                    serializeWriter.writeNull();
                } else {
                    jSONSerializer.getObjectWriter(objNextElement.getClass()).write(jSONSerializer, objNextElement, java.lang.Integer.valueOf(i3 - 1), type2, 0);
                }
                i2 = i3;
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
