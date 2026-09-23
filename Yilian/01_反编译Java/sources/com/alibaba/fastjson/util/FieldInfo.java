package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class FieldInfo implements java.lang.Comparable<com.alibaba.fastjson.util.FieldInfo> {
    public final java.lang.String[] alternateNames;
    public final java.lang.Class<?> declaringClass;
    public final java.lang.reflect.Field field;
    public final boolean fieldAccess;
    public final com.alibaba.fastjson.annotation.JSONField fieldAnnotation;
    public final java.lang.Class<?> fieldClass;
    public final boolean fieldTransient;
    public final java.lang.reflect.Type fieldType;
    public final java.lang.String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final boolean jsonDirect;
    public final java.lang.String label;
    public final java.lang.reflect.Method method;
    public final com.alibaba.fastjson.annotation.JSONField methodAnnotation;
    public final java.lang.String name;
    public final long nameHashCode;
    public final char[] name_chars;
    public int ordinal;
    public final int parserFeatures;
    public final int serialzeFeatures;
    public final boolean unwrapped;

    public FieldInfo(java.lang.String str, java.lang.Class<?> cls, java.lang.Class<?> cls2, java.lang.reflect.Type type, java.lang.reflect.Field field, int i, int i2, int i3) {
        this.ordinal = 0;
        i = i < 0 ? 0 : i;
        this.name = str;
        this.declaringClass = cls;
        this.fieldClass = cls2;
        this.fieldType = type;
        this.method = null;
        this.field = field;
        this.ordinal = i;
        this.serialzeFeatures = i2;
        this.parserFeatures = i3;
        this.isEnum = cls2.isEnum();
        if (field != null) {
            int modifiers = field.getModifiers();
            this.fieldAccess = (modifiers & 1) != 0 || this.method == null;
            this.fieldTransient = java.lang.reflect.Modifier.isTransient(modifiers);
        } else {
            this.fieldTransient = false;
            this.fieldAccess = false;
        }
        this.name_chars = genFieldNameChars();
        if (field != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(field);
        }
        this.label = "";
        com.alibaba.fastjson.annotation.JSONField jSONField = field == null ? null : (com.alibaba.fastjson.annotation.JSONField) com.alibaba.fastjson.util.TypeUtils.getAnnotation(field, com.alibaba.fastjson.annotation.JSONField.class);
        this.fieldAnnotation = jSONField;
        this.methodAnnotation = null;
        this.getOnly = false;
        this.jsonDirect = false;
        this.unwrapped = false;
        this.format = null;
        this.alternateNames = new java.lang.String[0];
        this.nameHashCode = nameHashCode64(str, jSONField);
    }

    public FieldInfo(java.lang.String str, java.lang.reflect.Method method, java.lang.reflect.Field field, java.lang.Class<?> cls, java.lang.reflect.Type type, int i, int i2, int i3, com.alibaba.fastjson.annotation.JSONField jSONField, com.alibaba.fastjson.annotation.JSONField jSONField2, java.lang.String str2) {
        this(str, method, field, cls, type, i, i2, i3, jSONField, jSONField2, str2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0139  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FieldInfo(java.lang.String r14, java.lang.reflect.Method r15, java.lang.reflect.Field r16, java.lang.Class<?> r17, java.lang.reflect.Type r18, int r19, int r20, int r21, com.alibaba.fastjson.annotation.JSONField r22, com.alibaba.fastjson.annotation.JSONField r23, java.lang.String r24, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> r25) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.FieldInfo.<init>(java.lang.String, java.lang.reflect.Method, java.lang.reflect.Field, java.lang.Class, java.lang.reflect.Type, int, int, int, com.alibaba.fastjson.annotation.JSONField, com.alibaba.fastjson.annotation.JSONField, java.lang.String, java.util.Map):void");
    }

    public static boolean getArgument(java.lang.reflect.Type[] typeArr, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < typeArr.length; i++) {
            java.lang.reflect.Type type = typeArr[i];
            if (type instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (getArgument(actualTypeArguments, map)) {
                    typeArr[i] = com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z = true;
                }
            } else if ((type instanceof java.lang.reflect.TypeVariable) && map.containsKey(type)) {
                typeArr[i] = map.get(type);
                z = true;
            }
        }
        return z;
    }

    public static boolean getArgument(java.lang.reflect.Type[] typeArr, java.lang.reflect.TypeVariable[] typeVariableArr, java.lang.reflect.Type[] typeArr2) {
        if (typeArr2 == null || typeVariableArr.length == 0) {
            return false;
        }
        boolean z = false;
        for (int i = 0; i < typeArr.length; i++) {
            java.lang.reflect.Type type = typeArr[i];
            if (type instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                if (getArgument(actualTypeArguments, typeVariableArr, typeArr2)) {
                    typeArr[i] = com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType.getOwnerType(), parameterizedType.getRawType()));
                    z = true;
                }
            } else if (type instanceof java.lang.reflect.TypeVariable) {
                for (int i2 = 0; i2 < typeVariableArr.length; i2++) {
                    if (type.equals(typeVariableArr[i2])) {
                        typeArr[i] = typeArr2[i2];
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public static java.lang.reflect.Type getFieldType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.Type type2) {
        return getFieldType(cls, type, type2, null);
    }

    public static java.lang.reflect.Type getFieldType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.Type type2, java.util.Map<java.lang.reflect.TypeVariable, java.lang.reflect.Type> map) {
        java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters;
        java.lang.reflect.ParameterizedType parameterizedType;
        if (cls != null && type != null) {
            if (type2 instanceof java.lang.reflect.GenericArrayType) {
                java.lang.reflect.Type genericComponentType = ((java.lang.reflect.GenericArrayType) type2).getGenericComponentType();
                java.lang.reflect.Type fieldType = getFieldType(cls, type, genericComponentType, map);
                return genericComponentType != fieldType ? java.lang.reflect.Array.newInstance(com.alibaba.fastjson.util.TypeUtils.getClass(fieldType), 0).getClass() : type2;
            }
            if (!com.alibaba.fastjson.util.TypeUtils.isGenericParamType(type)) {
                return type2;
            }
            if (type2 instanceof java.lang.reflect.TypeVariable) {
                java.lang.reflect.ParameterizedType parameterizedType2 = (java.lang.reflect.ParameterizedType) com.alibaba.fastjson.util.TypeUtils.getGenericParamType(type);
                java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) type2;
                java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters2 = com.alibaba.fastjson.util.TypeUtils.getClass(parameterizedType2).getTypeParameters();
                for (int i = 0; i < typeParameters2.length; i++) {
                    if (typeParameters2[i].getName().equals(typeVariable.getName())) {
                        return parameterizedType2.getActualTypeArguments()[i];
                    }
                }
            }
            if (type2 instanceof java.lang.reflect.ParameterizedType) {
                java.lang.reflect.ParameterizedType parameterizedType3 = (java.lang.reflect.ParameterizedType) type2;
                java.lang.reflect.Type[] actualTypeArguments = parameterizedType3.getActualTypeArguments();
                boolean argument = getArgument(actualTypeArguments, map);
                if (!argument) {
                    if (type instanceof java.lang.reflect.ParameterizedType) {
                        parameterizedType = (java.lang.reflect.ParameterizedType) type;
                    } else if (cls.getGenericSuperclass() instanceof java.lang.reflect.ParameterizedType) {
                        parameterizedType = (java.lang.reflect.ParameterizedType) cls.getGenericSuperclass();
                        cls = cls.getSuperclass();
                    } else {
                        typeParameters = type.getClass().getTypeParameters();
                        parameterizedType = parameterizedType3;
                        argument = getArgument(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments());
                    }
                    typeParameters = cls.getTypeParameters();
                    argument = getArgument(actualTypeArguments, typeParameters, parameterizedType.getActualTypeArguments());
                }
                if (argument) {
                    return com.alibaba.fastjson.TypeReference.intern(new com.alibaba.fastjson.util.ParameterizedTypeImpl(actualTypeArguments, parameterizedType3.getOwnerType(), parameterizedType3.getRawType()));
                }
            }
        }
        return type2;
    }

    public static java.lang.reflect.Type getInheritGenericType(java.lang.Class<?> cls, java.lang.reflect.Type type, java.lang.reflect.TypeVariable<?> typeVariable) {
        java.lang.reflect.Type[] actualTypeArguments;
        java.lang.Class<?> cls2 = typeVariable.getGenericDeclaration() instanceof java.lang.Class ? (java.lang.Class) typeVariable.getGenericDeclaration() : null;
        if (cls2 == cls) {
            actualTypeArguments = type instanceof java.lang.reflect.ParameterizedType ? ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments() : null;
        } else {
            java.lang.reflect.Type[] typeArr = null;
            while (cls != null && cls != java.lang.Object.class && cls != cls2) {
                java.lang.reflect.Type genericSuperclass = cls.getGenericSuperclass();
                if (genericSuperclass instanceof java.lang.reflect.ParameterizedType) {
                    java.lang.reflect.Type[] actualTypeArguments2 = ((java.lang.reflect.ParameterizedType) genericSuperclass).getActualTypeArguments();
                    getArgument(actualTypeArguments2, cls.getTypeParameters(), typeArr);
                    typeArr = actualTypeArguments2;
                }
                cls = cls.getSuperclass();
            }
            actualTypeArguments = typeArr;
        }
        if (actualTypeArguments == null || cls2 == null) {
            return null;
        }
        java.lang.reflect.TypeVariable<java.lang.Class<?>>[] typeParameters = cls2.getTypeParameters();
        for (int i = 0; i < typeParameters.length; i++) {
            if (typeVariable.equals(typeParameters[i])) {
                return actualTypeArguments[i];
            }
        }
        return null;
    }

    private long nameHashCode64(java.lang.String str, com.alibaba.fastjson.annotation.JSONField jSONField) {
        return (jSONField == null || jSONField.name().length() == 0) ? com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str) : com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(str);
    }

    @Override // java.lang.Comparable
    public int compareTo(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        if (method != null && this.method != null && method.isBridge() && !this.method.isBridge() && fieldInfo.method.getName().equals(this.method.getName())) {
            return 1;
        }
        int i = this.ordinal;
        int i2 = fieldInfo.ordinal;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int iCompareTo = this.name.compareTo(fieldInfo.name);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        java.lang.Class<?> declaredClass = getDeclaredClass();
        java.lang.Class<?> declaredClass2 = fieldInfo.getDeclaredClass();
        if (declaredClass != null && declaredClass2 != null && declaredClass != declaredClass2) {
            if (declaredClass.isAssignableFrom(declaredClass2)) {
                return -1;
            }
            if (declaredClass2.isAssignableFrom(declaredClass)) {
                return 1;
            }
        }
        java.lang.reflect.Field field = this.field;
        boolean z = false;
        boolean z2 = field != null && field.getType() == this.fieldClass;
        java.lang.reflect.Field field2 = fieldInfo.field;
        if (field2 != null && field2.getType() == fieldInfo.fieldClass) {
            z = true;
        }
        if (z2 && !z) {
            return 1;
        }
        if (z && !z2) {
            return -1;
        }
        if (fieldInfo.fieldClass.isPrimitive() && !this.fieldClass.isPrimitive()) {
            return 1;
        }
        if (this.fieldClass.isPrimitive() && !fieldInfo.fieldClass.isPrimitive()) {
            return -1;
        }
        if (fieldInfo.fieldClass.getName().startsWith("java.") && !this.fieldClass.getName().startsWith("java.")) {
            return 1;
        }
        if (!this.fieldClass.getName().startsWith("java.") || fieldInfo.fieldClass.getName().startsWith("java.")) {
            return this.fieldClass.getName().compareTo(fieldInfo.fieldClass.getName());
        }
        return -1;
    }

    public char[] genFieldNameChars() {
        int length = this.name.length();
        char[] cArr = new char[length + 3];
        java.lang.String str = this.name;
        str.getChars(0, str.length(), cArr, 1);
        cArr[0] = '\"';
        cArr[length + 1] = '\"';
        cArr[length + 2] = ':';
        return cArr;
    }

    public java.lang.Object get(java.lang.Object obj) {
        java.lang.reflect.Method method = this.method;
        return method != null ? method.invoke(obj, new java.lang.Object[0]) : this.field.get(obj);
    }

    public <T extends java.lang.annotation.Annotation> T getAnnation(java.lang.Class<T> cls) {
        java.lang.reflect.Field field;
        if (cls == com.alibaba.fastjson.annotation.JSONField.class) {
            return getAnnotation();
        }
        T t = null;
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            t = (T) com.alibaba.fastjson.util.TypeUtils.getAnnotation(method, cls);
        }
        return (t != null || (field = this.field) == null) ? t : (T) com.alibaba.fastjson.util.TypeUtils.getAnnotation(field, cls);
    }

    public com.alibaba.fastjson.annotation.JSONField getAnnotation() {
        com.alibaba.fastjson.annotation.JSONField jSONField = this.fieldAnnotation;
        return jSONField != null ? jSONField : this.methodAnnotation;
    }

    public java.lang.Class<?> getDeclaredClass() {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            return method.getDeclaringClass();
        }
        java.lang.reflect.Field field = this.field;
        if (field != null) {
            return field.getDeclaringClass();
        }
        return null;
    }

    public java.lang.String getFormat() {
        return this.format;
    }

    public java.lang.reflect.Member getMember() {
        java.lang.reflect.Method method = this.method;
        return method != null ? method : this.field;
    }

    public void set(java.lang.Object obj, java.lang.Object obj2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            method.invoke(obj, obj2);
        } else {
            this.field.set(obj, obj2);
        }
    }

    public void setAccessible() {
        java.lang.reflect.Method method = this.method;
        if (method != null) {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(method);
        } else {
            com.alibaba.fastjson.util.TypeUtils.setAccessible(this.field);
        }
    }

    public java.lang.String toString() {
        return this.name;
    }
}
