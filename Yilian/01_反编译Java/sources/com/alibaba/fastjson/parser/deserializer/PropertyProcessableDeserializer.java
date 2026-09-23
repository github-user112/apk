package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class PropertyProcessableDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public final java.lang.Class<com.alibaba.fastjson.parser.deserializer.PropertyProcessable> type;

    public PropertyProcessableDeserializer(java.lang.Class<com.alibaba.fastjson.parser.deserializer.PropertyProcessable> cls) {
        this.type = cls;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            return (T) defaultJSONParser.parse(this.type.newInstance(), obj);
        } catch (java.lang.Exception unused) {
            throw new com.alibaba.fastjson.JSONException("craete instance error");
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
