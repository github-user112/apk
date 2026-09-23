package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class IntegerCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.serializer.IntegerCodec instance = new com.alibaba.fastjson.serializer.IntegerCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        java.lang.Object obj2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        try {
            if (i == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                obj2 = (T) java.lang.Integer.valueOf(iIntValue);
            } else if (i == 3) {
                obj2 = (T) java.lang.Integer.valueOf(com.alibaba.fastjson.util.TypeUtils.intValue(jSONLexer.decimalValue()));
                jSONLexer.nextToken(16);
            } else if (i == 12) {
                com.alibaba.fastjson.JSONObject jSONObject = new com.alibaba.fastjson.JSONObject(true);
                defaultJSONParser.parseObject((java.util.Map) jSONObject);
                obj2 = (T) com.alibaba.fastjson.util.TypeUtils.castToInt(jSONObject);
            } else {
                obj2 = (T) com.alibaba.fastjson.util.TypeUtils.castToInt(defaultJSONParser.parse());
            }
            obj = java.util.concurrent.atomic.AtomicInteger.class;
            return type == obj ? (T) new java.util.concurrent.atomic.AtomicInteger(((java.lang.Integer) obj2).intValue()) : (T) obj2;
        } catch (java.lang.Exception e2) {
            java.lang.String str = "parseInt error";
            if (obj != null) {
                str = "parseInt error, field : " + obj;
            }
            throw new com.alibaba.fastjson.JSONException(str, e2);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        int i2;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Number number = (java.lang.Number) obj;
        if (number == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        if (obj instanceof java.lang.Long) {
            serializeWriter.writeLong(number.longValue());
        } else {
            serializeWriter.writeInt(number.intValue());
        }
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            java.lang.Class<?> cls = number.getClass();
            if (cls == java.lang.Byte.class) {
                i2 = 66;
            } else if (cls != java.lang.Short.class) {
                return;
            } else {
                i2 = 83;
            }
            serializeWriter.write(i2);
        }
    }
}
