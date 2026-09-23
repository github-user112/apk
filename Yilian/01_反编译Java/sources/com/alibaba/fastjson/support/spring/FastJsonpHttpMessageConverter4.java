package com.alibaba.fastjson.support.spring;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class FastJsonpHttpMessageConverter4 extends com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter {
    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public boolean canRead(java.lang.reflect.Type type, java.lang.Class<?> cls, org.springframework.http.MediaType mediaType) {
        return super.canRead(type, cls, mediaType);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public boolean canWrite(java.lang.reflect.Type type, java.lang.Class<?> cls, org.springframework.http.MediaType mediaType) {
        return super.canWrite(type, cls, mediaType);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public java.lang.Object read(java.lang.reflect.Type type, java.lang.Class<?> cls, org.springframework.http.HttpInputMessage httpInputMessage) {
        return super.read(type, cls, httpInputMessage);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public java.lang.Object readInternal(java.lang.Class<?> cls, org.springframework.http.HttpInputMessage httpInputMessage) {
        return super.readInternal(cls, httpInputMessage);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public boolean supports(java.lang.Class<?> cls) {
        return super.supports(cls);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public void write(java.lang.Object obj, java.lang.reflect.Type type, org.springframework.http.MediaType mediaType, org.springframework.http.HttpOutputMessage httpOutputMessage) {
        super.write(obj, type, mediaType, httpOutputMessage);
    }

    @Override // com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
    public void writeInternal(java.lang.Object obj, org.springframework.http.HttpOutputMessage httpOutputMessage) throws java.io.IOException {
        super.writeInternal(obj, httpOutputMessage);
    }
}
