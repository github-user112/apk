package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class GuavaCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.GuavaCodec instance = new com.alibaba.fastjson.serializer.GuavaCodec();

    /* JADX WARN: Type inference failed for: r5v2, types: [T, e.c.b.b.c, e.c.b.b.i] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (type instanceof java.lang.reflect.ParameterizedType) {
            type = ((java.lang.reflect.ParameterizedType) type).getRawType();
        }
        if (type != e.c.b.b.i.class) {
            return null;
        }
        ?? r5 = (T) new e.c.b.b.i();
        for (java.util.Map.Entry<java.lang.String, java.lang.Object> entry : defaultJSONParser.parseObject().entrySet()) {
            java.lang.Object value = entry.getValue();
            boolean z = value instanceof java.util.Collection;
            java.lang.String key = entry.getKey();
            if (z) {
                java.util.List list = (java.util.List) value;
                if (list == null) {
                    throw null;
                }
                if (!list.isEmpty()) {
                    r5.get(key).addAll(list);
                }
            } else {
                r5.put(key, value);
            }
        }
        return r5;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj instanceof e.c.b.b.d0) {
            jSONSerializer.write(((e.c.b.b.d0) obj).b());
        }
    }
}
