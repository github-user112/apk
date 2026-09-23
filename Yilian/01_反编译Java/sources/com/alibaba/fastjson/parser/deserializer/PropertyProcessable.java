package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public interface PropertyProcessable extends com.alibaba.fastjson.parser.deserializer.ParseProcess {
    void apply(java.lang.String str, java.lang.Object obj);

    java.lang.reflect.Type getType(java.lang.String str);
}
