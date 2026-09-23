package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class EnumCreatorDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public final java.lang.reflect.Method creator;
    public final java.lang.Class paramType;

    public EnumCreatorDeserializer(java.lang.reflect.Method method) {
        this.creator = method;
        this.paramType = method.getParameterTypes()[0];
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            return (T) this.creator.invoke(null, defaultJSONParser.parseObject((java.lang.Class) this.paramType));
        } catch (java.lang.IllegalAccessException e2) {
            throw new com.alibaba.fastjson.JSONException("parse enum error", e2);
        } catch (java.lang.reflect.InvocationTargetException e3) {
            throw new com.alibaba.fastjson.JSONException("parse enum error", e3);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }
}
