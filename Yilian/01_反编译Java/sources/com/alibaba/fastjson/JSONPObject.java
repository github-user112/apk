package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONPObject implements com.alibaba.fastjson.serializer.JSONSerializable {
    public static java.lang.String SECURITY_PREFIX = "/**/";
    public java.lang.String function;
    public final java.util.List<java.lang.Object> parameters = new java.util.ArrayList();

    public JSONPObject() {
    }

    public JSONPObject(java.lang.String str) {
        this.function = str;
    }

    public void addParameter(java.lang.Object obj) {
        this.parameters.add(obj);
    }

    public java.lang.String getFunction() {
        return this.function;
    }

    public java.util.List<java.lang.Object> getParameters() {
        return this.parameters;
    }

    public void setFunction(java.lang.String str) {
        this.function = str;
    }

    public java.lang.String toJSONString() {
        return toString();
    }

    public java.lang.String toString() {
        return com.alibaba.fastjson.JSON.toJSONString(this);
    }

    @Override // com.alibaba.fastjson.serializer.JSONSerializable
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        int i2 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask;
        if ((i & i2) != 0 || serializeWriter.isEnabled(i2)) {
            serializeWriter.write(SECURITY_PREFIX);
        }
        serializeWriter.write(this.function);
        serializeWriter.write(40);
        for (int i3 = 0; i3 < this.parameters.size(); i3++) {
            if (i3 != 0) {
                serializeWriter.write(44);
            }
            jSONSerializer.write(this.parameters.get(i3));
        }
        serializeWriter.write(41);
    }
}
