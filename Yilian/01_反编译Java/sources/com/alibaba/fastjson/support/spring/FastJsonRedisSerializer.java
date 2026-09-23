package com.alibaba.fastjson.support.spring;

/* loaded from: classes.dex */
public class FastJsonRedisSerializer<T> implements org.springframework.data.redis.serializer.RedisSerializer<T> {
    public com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    public java.lang.Class<T> type;

    public FastJsonRedisSerializer(java.lang.Class<T> cls) {
        this.type = cls;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public T deserialize(byte[] bArr) throws org.springframework.data.redis.serializer.SerializationException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        try {
            return (T) com.alibaba.fastjson.JSON.parseObject(bArr, this.fastJsonConfig.getCharset(), this.type, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        } catch (java.lang.Exception e2) {
            throw new org.springframework.data.redis.serializer.SerializationException(e.a.c.a.a.I(e2, e.a.c.a.a.o("Could not deserialize: ")), e2);
        }
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: org.springframework.data.redis.serializer.SerializationException */
    public byte[] serialize(T t) throws org.springframework.data.redis.serializer.SerializationException {
        if (t == null) {
            return new byte[0];
        }
        try {
            return com.alibaba.fastjson.JSON.toJSONBytesWithFastJsonConfig(this.fastJsonConfig.getCharset(), t, this.fastJsonConfig.getSerializeConfig(), this.fastJsonConfig.getSerializeFilters(), this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, this.fastJsonConfig.getSerializerFeatures());
        } catch (java.lang.Exception e2) {
            throw new org.springframework.data.redis.serializer.SerializationException(e.a.c.a.a.I(e2, e.a.c.a.a.o("Could not serialize: ")), e2);
        }
    }

    public void setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }
}
