package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class LongCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.LongCodec instance = new com.alibaba.fastjson.serializer.LongCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object objCastToLong;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        try {
            int i = jSONLexer.token();
            if (i == 2) {
                long jLongValue = jSONLexer.longValue();
                jSONLexer.nextToken(16);
                objCastToLong = (T) java.lang.Long.valueOf(jLongValue);
            } else if (i == 3) {
                objCastToLong = (T) java.lang.Long.valueOf(com.alibaba.fastjson.util.TypeUtils.longValue(jSONLexer.decimalValue()));
                jSONLexer.nextToken(16);
            } else {
                if (i == 12) {
                    com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
                    defaultJSONParser.parseObject((java.util.Map) jSONObject);
                    objCastToLong = (T) com.alibaba.fastjson.util.TypeUtils.castToLong(jSONObject);
                } else {
                    objCastToLong = com.alibaba.fastjson.util.TypeUtils.castToLong(defaultJSONParser.parse());
                }
                if (objCastToLong == null) {
                    return null;
                }
            }
            return type == java.util.concurrent.atomic.AtomicLong.class ? (T) new java.util.concurrent.atomic.AtomicLong(((java.lang.Long) objCastToLong).longValue()) : (T) objCastToLong;
        } catch (java.lang.Exception e2) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.d("parseLong error, field : ", obj), e2);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        long jLongValue = ((java.lang.Long) obj).longValue();
        serializeWriter.writeLong(jLongValue);
        if (!serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) || jLongValue > 2147483647L || jLongValue < -2147483648L || type == java.lang.Long.class || type == java.lang.Long.TYPE) {
            return;
        }
        serializeWriter.write(76);
    }
}
