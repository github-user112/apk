package com.alibaba.fastjson.serializer;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class JSONSerializerMap extends com.alibaba.fastjson.serializer.SerializeConfig {
    public final boolean put(java.lang.Class<?> cls, com.alibaba.fastjson.serializer.ObjectSerializer objectSerializer) {
        return super.put((java.lang.reflect.Type) cls, objectSerializer);
    }
}
