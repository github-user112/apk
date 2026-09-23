package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JSONAwareSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static com.alibaba.fastjson.serializer.JSONAwareSerializer instance = new com.alibaba.fastjson.serializer.JSONAwareSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
        } else {
            serializeWriter.write(((com.alibaba.fastjson.JSONAware) obj).toJSONString());
        }
    }
}
