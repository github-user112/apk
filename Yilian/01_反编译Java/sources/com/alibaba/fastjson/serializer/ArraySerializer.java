package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class ArraySerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public final com.alibaba.fastjson.serializer.ObjectSerializer compObjectSerializer;
    public final java.lang.Class<?> componentType;

    public ArraySerializer(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        this.componentType = cls;
        this.compObjectSerializer = objectSerializer;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter;
        java.lang.Integer numValueOf;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.lang.Object[] objArr = (java.lang.Object[]) obj;
        int length = objArr.length;
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append('[');
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 != 0) {
                    serializeWriter.append(',');
                }
                java.lang.Object obj3 = objArr[i2];
                if (obj3 != null) {
                    if (obj3.getClass() == this.componentType) {
                        objectWriter = this.compObjectSerializer;
                        numValueOf = java.lang.Integer.valueOf(i2);
                    } else {
                        objectWriter = jSONSerializer.getObjectWriter(obj3.getClass());
                        numValueOf = java.lang.Integer.valueOf(i2);
                    }
                    objectWriter.write(jSONSerializer, obj3, numValueOf, null, 0);
                } else if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty) && (obj instanceof java.lang.String[])) {
                    serializeWriter.writeString("");
                } else {
                    serializeWriter.append((java.lang.CharSequence) "null");
                }
            }
            serializeWriter.append(']');
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
