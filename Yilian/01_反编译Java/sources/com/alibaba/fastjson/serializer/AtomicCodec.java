package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class AtomicCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.AtomicCodec instance = new com.alibaba.fastjson.serializer.AtomicCodec();

    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.util.concurrent.atomic.AtomicLongArray] */
    /* JADX WARN: Type inference failed for: r4v3, types: [T, java.util.concurrent.atomic.AtomicIntegerArray] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        if (defaultJSONParser.lexer.token() == 8) {
            defaultJSONParser.lexer.nextToken(16);
            return null;
        }
        com.alibaba.fastjson.JSONArray jSONArray = new com.alibaba.fastjson.JSONArray();
        defaultJSONParser.parseArray(jSONArray);
        int i = 0;
        if (type == java.util.concurrent.atomic.AtomicIntegerArray.class) {
            ?? r4 = (T) new java.util.concurrent.atomic.AtomicIntegerArray(jSONArray.size());
            while (i < jSONArray.size()) {
                r4.set(i, jSONArray.getInteger(i).intValue());
                i++;
            }
            return r4;
        }
        ?? r42 = (T) new java.util.concurrent.atomic.AtomicLongArray(jSONArray.size());
        while (i < jSONArray.size()) {
            r42.set(i, jSONArray.getLong(i).longValue());
            i++;
        }
        return r42;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj instanceof java.util.concurrent.atomic.AtomicInteger) {
            serializeWriter.writeInt(((java.util.concurrent.atomic.AtomicInteger) obj).get());
            return;
        }
        if (obj instanceof java.util.concurrent.atomic.AtomicLong) {
            serializeWriter.writeLong(((java.util.concurrent.atomic.AtomicLong) obj).get());
            return;
        }
        if (obj instanceof java.util.concurrent.atomic.AtomicBoolean) {
            serializeWriter.append((java.lang.CharSequence) (((java.util.concurrent.atomic.AtomicBoolean) obj).get() ? "true" : "false"));
            return;
        }
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i2 = 0;
        if (obj instanceof java.util.concurrent.atomic.AtomicIntegerArray) {
            java.util.concurrent.atomic.AtomicIntegerArray atomicIntegerArray = (java.util.concurrent.atomic.AtomicIntegerArray) obj;
            int length = atomicIntegerArray.length();
            serializeWriter.write(91);
            while (i2 < length) {
                int i3 = atomicIntegerArray.get(i2);
                if (i2 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(i3);
                i2++;
            }
            serializeWriter.write(93);
            return;
        }
        java.util.concurrent.atomic.AtomicLongArray atomicLongArray = (java.util.concurrent.atomic.AtomicLongArray) obj;
        int length2 = atomicLongArray.length();
        serializeWriter.write(91);
        while (i2 < length2) {
            long j = atomicLongArray.get(i2);
            if (i2 != 0) {
                serializeWriter.write(44);
            }
            serializeWriter.writeLong(j);
            i2++;
        }
        serializeWriter.write(93);
    }
}
