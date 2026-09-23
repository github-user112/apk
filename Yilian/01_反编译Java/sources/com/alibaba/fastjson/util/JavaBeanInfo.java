package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class JavaBeanInfo {
    public final java.lang.reflect.Method buildMethod;
    public final java.lang.Class<?> builderClass;
    public final java.lang.Class<?> clazz;
    public final java.lang.reflect.Constructor<?> creatorConstructor;
    public java.lang.reflect.Type[] creatorConstructorParameterTypes;
    public java.lang.String[] creatorConstructorParameters;
    public final java.lang.reflect.Constructor<?> defaultConstructor;
    public final int defaultConstructorParameterSize;
    public final java.lang.reflect.Method factoryMethod;
    public final com.alibaba.fastjson.util.FieldInfo[] fields;
    public final com.alibaba.fastjson.annotation.JSONType jsonType;
    public boolean kotlin;
    public java.lang.reflect.Constructor<?> kotlinDefaultConstructor;
    public java.lang.String[] orders;
    public final int parserFeatures;
    public final com.alibaba.fastjson.util.FieldInfo[] sortedFields;
    public final java.lang.String typeKey;
    public final java.lang.String typeName;

    /* JADX WARN: Removed duplicated region for block: B:44:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public JavaBeanInfo(java.lang.Class<?> r8, java.lang.Class<?> r9, java.lang.reflect.Constructor<?> r10, java.lang.reflect.Constructor<?> r11, java.lang.reflect.Method r12, java.lang.reflect.Method r13, com.alibaba.fastjson.annotation.JSONType r14, java.util.List<com.alibaba.fastjson.util.FieldInfo> r15) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.JavaBeanInfo.<init>(java.lang.Class, java.lang.Class, java.lang.reflect.Constructor, java.lang.reflect.Constructor, java.lang.reflect.Method, java.lang.reflect.Method, com.alibaba.fastjson.annotation.JSONType, java.util.List):void");
    }

    public static boolean add(java.util.List<com.alibaba.fastjson.util.FieldInfo> list, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        for (int size = list.size() - 1; size >= 0; size--) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = list.get(size);
            if (fieldInfo2.name.equals(fieldInfo.name) && (!fieldInfo2.getOnly || fieldInfo.getOnly)) {
                if (fieldInfo2.fieldClass.isAssignableFrom(fieldInfo.fieldClass)) {
                    list.set(size, fieldInfo);
                    return true;
                }
                if (fieldInfo2.compareTo(fieldInfo) >= 0) {
                    return false;
                }
                list.set(size, fieldInfo);
                return true;
            }
        }
        list.add(fieldInfo);
        return true;
    }

    public static com.alibaba.fastjson.util.JavaBeanInfo build(java.lang.Class<?> cls, java.lang.reflect.Type type, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy) {
        return build(cls, type, propertyNamingStrategy, false, com.alibaba.fastjson.util.TypeUtils.compatibleWithJavaBean, false);
    }

    public static com.alibaba.fastjson.util.JavaBeanInfo build(java.lang.Class<?> cls, java.lang.reflect.Type type, com.alibaba.fastjson.PropertyNamingStrategy propertyNamingStrategy, boolean z, boolean z2) {
        return build(cls, type, propertyNamingStrategy, z, z2, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:122:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x068e  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0873  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x08a0  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x08a3  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x0912  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0a23  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.alibaba.fastjson.util.JavaBeanInfo build(java.lang.Class<?> r45, java.lang.reflect.Type r46, com.alibaba.fastjson.PropertyNamingStrategy r47, boolean r48, boolean r49, boolean r50) {
        /*
            Method dump skipped, instructions count: 2748
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.JavaBeanInfo.build(java.lang.Class, java.lang.reflect.Type, com.alibaba.fastjson.PropertyNamingStrategy, boolean, boolean, boolean):com.alibaba.fastjson.util.JavaBeanInfo");
    }

    public static java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> buildGenericInfo(java.lang.Class<?> cls) {
        java.lang.Class<? super java.lang.Object> superclass = cls.getSuperclass();
        java.util.HashMap map = null;
        if (superclass == null) {
            return null;
        }
        while (true) {
            java.lang.Class<? super java.lang.Object> cls2 = superclass;
            java.lang.Class<?> cls3 = cls;
            cls = cls2;
            if (cls == null || cls == java.lang.Object.class) {
                break;
            }
            if (cls3.getGenericSuperclass() instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.Type[] actualTypeArguments = ((java.lang.reflect.ParameterizedType) cls3.getGenericSuperclass()).getActualTypeArguments();
                java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters = cls.getTypeParameters();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    if (map == null) {
                        map = new java.util.HashMap();
                    }
                    if (map.containsKey(actualTypeArguments[i])) {
                        map.put(typeParameters[i], map.get(actualTypeArguments[i]));
                    } else {
                        map.put(typeParameters[i], actualTypeArguments[i]);
                    }
                }
            }
            superclass = cls.getSuperclass();
        }
        return map;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void computeFields(java.lang.Class<?> r20, java.lang.reflect.Type r21, com.alibaba.fastjson.PropertyNamingStrategy r22, java.util.List<com.alibaba.fastjson.util.FieldInfo> r23, java.lang.reflect.Field[] r24) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.JavaBeanInfo.computeFields(java.lang.Class, java.lang.reflect.Type, com.alibaba.fastjson.PropertyNamingStrategy, java.util.List, java.lang.reflect.Field[]):void");
    }

    public static java.lang.Class<?> getBuilderClass(com.alibaba.fastjson.annotation.JSONType jSONType) {
        return getBuilderClass(null, jSONType);
    }

    public static java.lang.Class<?> getBuilderClass(java.lang.Class<?> cls, com.alibaba.fastjson.annotation.JSONType jSONType) {
        java.lang.Class<?> clsBuilder;
        if (cls != null && cls.getName().equals("org.springframework.security.web.savedrequest.DefaultSavedRequest")) {
            return com.alibaba.fastjson.util.TypeUtils.loadClass("org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder");
        }
        if (jSONType == null || (clsBuilder = jSONType.builder()) == java.lang.Void.class) {
            return null;
        }
        return clsBuilder;
    }

    public static java.lang.reflect.Constructor<?> getCreatorConstructor(java.lang.reflect.Constructor[] constructorArr) {
        boolean z;
        java.lang.reflect.Constructor constructor = null;
        for (java.lang.reflect.Constructor constructor2 : constructorArr) {
            if (((com.alibaba.fastjson.annotation.JSONCreator) constructor2.getAnnotation(com.alibaba.fastjson.annotation.JSONCreator.class)) != null) {
                if (constructor != null) {
                    throw new com.alibaba.fastjson.JSONException("multi-JSONCreator");
                }
                constructor = constructor2;
            }
        }
        if (constructor != null) {
            return constructor;
        }
        for (java.lang.reflect.Constructor constructor3 : constructorArr) {
            java.lang.annotation.Annotation[][] parameterAnnotations = com.alibaba.fastjson.util.TypeUtils.getParameterAnnotations(constructor3);
            if (parameterAnnotations.length != 0) {
                int length = parameterAnnotations.length;
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= length) {
                        break;
                    }
                    java.lang.annotation.Annotation[] annotationArr = parameterAnnotations[i];
                    int length2 = annotationArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length2) {
                            z = false;
                            break;
                        }
                        if (annotationArr[i2] instanceof com.alibaba.fastjson.annotation.JSONField) {
                            break;
                        }
                        i2++;
                    }
                    if (!z) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    continue;
                } else {
                    if (constructor != null) {
                        throw new com.alibaba.fastjson.JSONException("multi-JSONCreator");
                    }
                    constructor = constructor3;
                }
            }
        }
        return constructor;
    }

    public static java.lang.reflect.Constructor<?> getDefaultConstructor(java.lang.Class<?> cls, java.lang.reflect.Constructor<?>[] constructorArr) {
        java.lang.reflect.Constructor<?> constructor = null;
        if (java.lang.reflect.Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        int length = constructorArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            java.lang.reflect.Constructor<?> constructor2 = constructorArr[i];
            if (constructor2.getParameterTypes().length == 0) {
                constructor = constructor2;
                break;
            }
            i++;
        }
        if (constructor != null || !cls.isMemberClass() || java.lang.reflect.Modifier.isStatic(cls.getModifiers())) {
            return constructor;
        }
        for (java.lang.reflect.Constructor<?> constructor3 : constructorArr) {
            java.lang.Class<?>[] parameterTypes = constructor3.getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls.getDeclaringClass())) {
                return constructor3;
            }
        }
        return constructor;
    }

    public static java.lang.reflect.Method getFactoryMethod(java.lang.Class<?> cls, java.lang.reflect.Method[] methodArr, boolean z) {
        java.lang.reflect.Method method = null;
        for (java.lang.reflect.Method method2 : methodArr) {
            if (java.lang.reflect.Modifier.isStatic(method2.getModifiers()) && cls.isAssignableFrom(method2.getReturnType()) && ((com.alibaba.fastjson.annotation.JSONCreator) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method2, com.alibaba.fastjson.annotation.JSONCreator.class)) != null) {
                if (method != null) {
                    throw new com.alibaba.fastjson.JSONException("multi-JSONCreator");
                }
                method = method2;
            }
        }
        if (method != null || !z) {
            return method;
        }
        for (java.lang.reflect.Method method3 : methodArr) {
            if (com.alibaba.fastjson.util.TypeUtils.isJacksonCreator(method3)) {
                return method3;
            }
        }
        return method;
    }

    public static com.alibaba.fastjson.util.FieldInfo getField(java.util.List<com.alibaba.fastjson.util.FieldInfo> list, java.lang.String str) {
        for (com.alibaba.fastjson.util.FieldInfo fieldInfo : list) {
            if (fieldInfo.name.equals(str)) {
                return fieldInfo;
            }
            java.lang.reflect.Field field = fieldInfo.field;
            if (field != null && fieldInfo.getAnnotation() != null && field.getName().equals(str)) {
                return fieldInfo;
            }
        }
        return null;
    }
}
