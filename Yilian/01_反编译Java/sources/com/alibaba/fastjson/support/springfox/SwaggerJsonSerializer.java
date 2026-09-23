package com.alibaba.fastjson.support.springfox;

/* loaded from: classes.dex */
public class SwaggerJsonSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer instance = new com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        jSONSerializer.getWriter().write(((springfox.documentation.spring.web.json.Json) obj).value());
    }
}
