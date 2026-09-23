package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class BigIntegerCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final java.math.BigInteger LOW = java.math.BigInteger.valueOf(-9007199254740991L);
    public static final java.math.BigInteger HIGH = java.math.BigInteger.valueOf(9007199254740991L);
    public static final com.alibaba.fastjson.serializer.BigIntegerCodec instance = new com.alibaba.fastjson.serializer.BigIntegerCodec();

    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 2) {
            java.lang.Object obj = defaultJSONParser.parse();
            if (obj == null) {
                return null;
            }
            return (T) com.alibaba.fastjson.util.TypeUtils.castToBigInteger(obj);
        }
        java.lang.String strNumberString = jSONLexer.numberString();
        jSONLexer.nextToken(16);
        if (strNumberString.length() <= 65535) {
            return (T) new java.math.BigInteger(strNumberString);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser);
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
        java.math.BigInteger bigInteger = (java.math.BigInteger) obj;
        java.lang.String string = bigInteger.toString();
        if (string.length() < 16 || !com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i, serializeWriter.features, com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) || (bigInteger.compareTo(LOW) >= 0 && bigInteger.compareTo(HIGH) <= 0)) {
            serializeWriter.write(string);
        } else {
            serializeWriter.writeString(string);
        }
    }
}
