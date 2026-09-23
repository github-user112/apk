package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class AppendableSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.AppendableSerializer instance = new com.alibaba.fastjson.serializer.AppendableSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        if (obj == null) {
            jSONSerializer.out.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty);
        } else {
            jSONSerializer.write(obj.toString());
        }
    }
}
