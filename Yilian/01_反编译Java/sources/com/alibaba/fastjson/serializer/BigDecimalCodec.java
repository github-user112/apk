package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class BigDecimalCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final java.math.BigDecimal LOW = java.math.BigDecimal.valueOf(-9007199254740991L);
    public static final java.math.BigDecimal HIGH = java.math.BigDecimal.valueOf(9007199254740991L);
    public static final com.alibaba.fastjson.serializer.BigDecimalCodec instance = new com.alibaba.fastjson.serializer.BigDecimalCodec();

    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 2 || jSONLexer.token() == 3) {
            T t = (T) jSONLexer.decimalValue();
            jSONLexer.nextToken(16);
            return t;
        }
        java.lang.Object obj = defaultJSONParser.parse();
        if (obj == null) {
            return null;
        }
        return (T) com.alibaba.fastjson.util.TypeUtils.castToBigDecimal(obj);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            return (T) deserialze(defaultJSONParser);
        } catch (java.lang.Exception e2) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.d("parseDecimal error, field : ", obj), e2);
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
        java.math.BigDecimal bigDecimal = (java.math.BigDecimal) obj;
        int iScale = bigDecimal.scale();
        java.lang.String string = (!com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString();
        if (iScale == 0 && string.length() >= 16 && com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) && (bigDecimal.compareTo(LOW) < 0 || bigDecimal.compareTo(HIGH) > 0)) {
            serializeWriter.writeString(string);
            return;
        }
        serializeWriter.write(string);
        if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && type != java.math.BigDecimal.class && bigDecimal.scale() == 0) {
            serializeWriter.write(46);
        }
    }
}
