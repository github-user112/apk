package com.alibaba.fastjson.support.retrofit;

/* loaded from: classes.dex */
public class Retrofit2ConverterFactory extends retrofit2.Converter.Factory {
    public com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig;

    @java.lang.Deprecated
    public int featureValues;

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.Feature[] features;

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.ParserConfig parserConfig;

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeConfig serializeConfig;

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatures;
    public static final okhttp3.MediaType MEDIA_TYPE = okhttp3.MediaType.parse("application/json; charset=UTF-8");

    @java.lang.Deprecated
    public static final com.alibaba.fastjson.parser.Feature[] EMPTY_SERIALIZER_FEATURES = new com.alibaba.fastjson.parser.Feature[0];

    public final class RequestBodyConverter<T> implements retrofit2.Converter<T, okhttp3.RequestBody> {
        public RequestBodyConverter() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* bridge */ /* synthetic */ java.lang.Object convert(java.lang.Object obj) {
            return m1convert((com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.RequestBodyConverter<T>) obj);
        }

        /* renamed from: convert, reason: collision with other method in class */
        public okhttp3.RequestBody m1convert(T t) throws java.io.IOException {
            try {
                return okhttp3.RequestBody.create(com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.MEDIA_TYPE, com.alibaba.fastjson.JSON.toJSONBytesWithFastJsonConfig(com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), t, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeConfig(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializeFilters(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getDateFormat(), com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getSerializerFeatures()));
            } catch (java.lang.Exception e2) {
                throw new java.io.IOException(e.a.c.a.a.I(e2, e.a.c.a.a.o("Could not write JSON: ")), e2);
            }
        }
    }

    public final class ResponseBodyConverter<T> implements retrofit2.Converter<okhttp3.ResponseBody, T> {
        public java.lang.reflect.Type type;

        public ResponseBodyConverter(java.lang.reflect.Type type) {
            this.type = type;
        }

        public T convert(okhttp3.ResponseBody responseBody) {
            try {
                try {
                    return (T) com.alibaba.fastjson.JSON.parseObject(responseBody.bytes(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getCharset(), this.type, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getParserConfig(), com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getParseProcess(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE, com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.this.fastJsonConfig.getFeatures());
                } catch (java.lang.Exception e2) {
                    throw new java.io.IOException("JSON parse error: " + e2.getMessage(), e2);
                }
            } finally {
                responseBody.close();
            }
        }
    }

    public Retrofit2ConverterFactory() {
        this.parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
        this.featureValues = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = new com.alibaba.fastjson.support.config.FastJsonConfig();
    }

    public Retrofit2ConverterFactory(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.parserConfig = com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance();
        this.featureValues = com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
        this.fastJsonConfig = fastJsonConfig;
    }

    public static com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory create() {
        return create(new com.alibaba.fastjson.support.config.FastJsonConfig());
    }

    public static com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory create(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        if (fastJsonConfig != null) {
            return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory(fastJsonConfig);
        }
        throw new java.lang.NullPointerException("fastJsonConfig == null");
    }

    public com.alibaba.fastjson.support.config.FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.ParserConfig getParserConfig() {
        return this.fastJsonConfig.getParserConfig();
    }

    @java.lang.Deprecated
    public int getParserFeatureValues() {
        return com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.parser.Feature[] getParserFeatures() {
        return this.fastJsonConfig.getFeatures();
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializeConfig getSerializeConfig() {
        return this.fastJsonConfig.getSerializeConfig();
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.serializer.SerializerFeature[] getSerializerFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    public retrofit2.Converter<java.lang.Object, okhttp3.RequestBody> requestBodyConverter(java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, java.lang.annotation.Annotation[] annotationArr2, retrofit2.Retrofit retrofit) {
        return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.RequestBodyConverter();
    }

    public retrofit2.Converter<okhttp3.ResponseBody, java.lang.Object> responseBodyConverter(java.lang.reflect.Type type, java.lang.annotation.Annotation[] annotationArr, retrofit2.Retrofit retrofit) {
        return new com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory.ResponseBodyConverter(type);
    }

    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setFastJsonConfig(com.alibaba.fastjson.support.config.FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserConfig(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this.fastJsonConfig.setParserConfig(parserConfig);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserFeatureValues(int i) {
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setParserFeatures(com.alibaba.fastjson.parser.Feature[] featureArr) {
        this.fastJsonConfig.setFeatures(featureArr);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setSerializeConfig(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        this.fastJsonConfig.setSerializeConfig(serializeConfig);
        return this;
    }

    @java.lang.Deprecated
    public com.alibaba.fastjson.support.retrofit.Retrofit2ConverterFactory setSerializerFeatures(com.alibaba.fastjson.serializer.SerializerFeature[] serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
        return this;
    }
}
