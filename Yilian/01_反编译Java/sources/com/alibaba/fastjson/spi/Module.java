package com.alibaba.fastjson.spi;

/* loaded from: classes.dex */
public interface Module {
    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class cls);

    com.alibaba.fastjson.serializer.ObjectSerializer createSerializer(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig, java.lang.Class cls);
}
