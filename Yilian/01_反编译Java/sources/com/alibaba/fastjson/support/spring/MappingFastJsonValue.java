package com.alibaba.fastjson.support.spring;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class MappingFastJsonValue implements com.alibaba.fastjson.serializer.JSONSerializable {
    public static final int BrowserSecureMask = com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask;
    public static final java.lang.String SECURITY_PREFIX = "/**/";
    public java.lang.String jsonpFunction;
    public java.lang.Object value;

    public MappingFastJsonValue(java.lang.Object obj) {
        this.value = obj;
    }

    public java.lang.String getJsonpFunction() {
        return this.jsonpFunction;
    }

    public java.lang.Object getValue() {
        return this.value;
    }

    public void setJsonpFunction(java.lang.String str) {
        this.jsonpFunction = str;
    }

    public void setValue(java.lang.Object obj) {
        this.value = obj;
    }

    @Override // com.alibaba.fastjson.serializer.JSONSerializable
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (this.jsonpFunction == null) {
            jSONSerializer.write(this.value);
            return;
        }
        int i2 = BrowserSecureMask;
        if ((i & i2) != 0 || serializeWriter.isEnabled(i2)) {
            serializeWriter.write(SECURITY_PREFIX);
        }
        serializeWriter.write(this.jsonpFunction);
        serializeWriter.write(40);
        jSONSerializer.write(this.value);
        serializeWriter.write(41);
    }
}
