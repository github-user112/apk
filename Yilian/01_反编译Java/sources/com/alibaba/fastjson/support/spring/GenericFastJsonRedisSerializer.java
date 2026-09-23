package com.alibaba.fastjson.support.spring;

/* loaded from: classes.dex */
public class GenericFastJsonRedisSerializer implements org.springframework.data.redis.serializer.RedisSerializer<java.lang.Object> {
    public static final com.alibaba.fastjson.parser.ParserConfig defaultRedisConfig;

    static {
        com.alibaba.fastjson.parser.ParserConfig parserConfig = new com.alibaba.fastjson.parser.ParserConfig();
        defaultRedisConfig = parserConfig;
        parserConfig.setAutoTypeSupport(true);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public java.lang.Object deserialize(byte[] bArr) throws org.springframework.data.redis.serializer.SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return com.alibaba.fastjson.JSON.parseObject(new java.lang.String(bArr, com.alibaba.fastjson.util.IOUtils.UTF8), java.lang.Object.class, defaultRedisConfig, new com.alibaba.fastjson.parser.Feature[0]);
        } catch (java.lang.Exception e2) {
            throw new org.springframework.data.redis.serializer.SerializationException(e.a.c.a.a.I(e2, e.a.c.a.a.o("Could not deserialize: ")), e2);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public byte[] serialize(java.lang.Object obj) throws org.springframework.data.redis.serializer.SerializationException {
        if (obj == null) {
            return new byte[0];
        }
        try {
            return com.alibaba.fastjson.JSON.toJSONBytes(obj, com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName);
        } catch (java.lang.Exception e2) {
            throw new org.springframework.data.redis.serializer.SerializationException(e.a.c.a.a.I(e2, e.a.c.a.a.o("Could not serialize: ")), e2);
        }
    }
}
