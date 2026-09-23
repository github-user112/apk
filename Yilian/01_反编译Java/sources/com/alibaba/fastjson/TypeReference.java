package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class TypeReference<T> {
    public final java.lang.reflect.Type type;
    public static java.util.concurrent.ConcurrentMap<java.lang.reflect.Type, java.lang.reflect.Type> classTypeCache = new java.util.concurrent.ConcurrentHashMap(16, 0.75f, 1);
    public static final java.lang.reflect.Type LIST_STRING = new com.alibaba.fastjson.TypeReference<java.util.List<java.lang.String>>() { // from class: com.alibaba.fastjson.TypeReference.1
    }.getType();

    public TypeReference() {
        java.lang.reflect.Type type = ((java.lang.reflect.ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
        java.lang.reflect.Type type2 = classTypeCache.get(type);
        if (type2 == null) {
            classTypeCache.putIfAbsent(type, type);
            type2 = classTypeCache.get(type);
        }
        this.type = type2;
    }

    public TypeReference(java.lang.reflect.Type... typeArr) {
        java.lang.Class<?> cls = getClass();
        java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) ((java.lang.reflect.ParameterizedType) cls.getGenericSuperclass()).getActualTypeArguments()[0];
        java.lang.reflect.Type rawType = parameterizedType.getRawType();
        java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int i = 0;
        for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
            if ((actualTypeArguments[i2] instanceof java.lang.reflect.TypeVariable) && i < typeArr.length) {
                actualTypeArguments[i2] = typeArr[i];
                i++;
            }
            if (actualTypeArguments[i2] instanceof java.lang.reflect.GenericArrayType) {
                actualTypeArguments[i2] = com.alibaba.fastjson.util.TypeUtils.checkPrimitiveArray((java.lang.reflect.GenericArrayType) actualTypeArguments[i2]);
            }
            if (actualTypeArguments[i2] instanceof java.lang.reflect.ParameterizedType) {
                actualTypeArguments[i2] = handlerParameterizedType((java.lang.reflect.ParameterizedType) actualTypeArguments[i2], typeArr, i);
            }
        }
        com.alibaba.fastjson.util.ParameterizedTypeImpl parameterizedTypeImpl = new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
        java.lang.reflect.Type type = classTypeCache.get(parameterizedTypeImpl);
        if (type == null) {
            classTypeCache.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
            type = classTypeCache.get(parameterizedTypeImpl);
        }
        this.type = type;
    }

    private java.lang.reflect.Type handlerParameterizedType(java.lang.reflect.ParameterizedType parameterizedType, java.lang.reflect.Type[] typeArr, int i) {
        java.lang.Class<?> cls = getClass();
        java.lang.reflect.Type rawType = parameterizedType.getRawType();
        java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i2 = 0; i2 < actualTypeArguments.length; i2++) {
            if ((actualTypeArguments[i2] instanceof java.lang.reflect.TypeVariable) && i < typeArr.length) {
                actualTypeArguments[i2] = typeArr[i];
                i++;
            }
            if (actualTypeArguments[i2] instanceof java.lang.reflect.GenericArrayType) {
                actualTypeArguments[i2] = com.alibaba.fastjson.util.TypeUtils.checkPrimitiveArray((java.lang.reflect.GenericArrayType) actualTypeArguments[i2]);
            }
            if (actualTypeArguments[i2] instanceof java.lang.reflect.ParameterizedType) {
                actualTypeArguments[i2] = handlerParameterizedType((java.lang.reflect.ParameterizedType) actualTypeArguments[i2], typeArr, i);
            }
        }
        return new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, cls, rawType);
    }

    public static java.lang.reflect.Type intern(com.alibaba.fastjson.util.ParameterizedTypeImpl parameterizedTypeImpl) {
        java.lang.reflect.Type type = classTypeCache.get(parameterizedTypeImpl);
        if (type != null) {
            return type;
        }
        classTypeCache.putIfAbsent(parameterizedTypeImpl, parameterizedTypeImpl);
        return classTypeCache.get(parameterizedTypeImpl);
    }

    public java.lang.reflect.Type getType() {
        return this.type;
    }
}
