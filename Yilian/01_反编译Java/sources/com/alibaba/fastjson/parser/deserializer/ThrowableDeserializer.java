package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class ThrowableDeserializer extends com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer {
    public ThrowableDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls) {
        super(parserConfig, cls, cls);
    }

    private java.lang.Throwable createException(java.lang.String str, java.lang.Throwable th, java.lang.Class<?> cls) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.Object objNewInstance;
        java.lang.reflect.Constructor<?> constructor = null;
        java.lang.reflect.Constructor<?> constructor2 = null;
        java.lang.reflect.Constructor<?> constructor3 = null;
        for (java.lang.reflect.Constructor<?> constructor4 : cls.getConstructors()) {
            java.lang.Class<?>[] parameterTypes = constructor4.getParameterTypes();
            if (parameterTypes.length == 0) {
                constructor3 = constructor4;
            } else if (parameterTypes.length == 1 && parameterTypes[0] == java.lang.String.class) {
                constructor2 = constructor4;
            } else if (parameterTypes.length == 2 && parameterTypes[0] == java.lang.String.class && parameterTypes[1] == java.lang.Throwable.class) {
                constructor = constructor4;
            }
        }
        if (constructor != null) {
            objNewInstance = constructor.newInstance(str, th);
        } else if (constructor2 != null) {
            objNewInstance = constructor2.newInstance(str);
        } else {
            if (constructor3 == null) {
                return null;
            }
            objNewInstance = constructor3.newInstance(new java.lang.Object[0]);
        }
        return (java.lang.Throwable) objNewInstance;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036  */
    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r13, java.lang.reflect.Type r14, java.lang.Object r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
