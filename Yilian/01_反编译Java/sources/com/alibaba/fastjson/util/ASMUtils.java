package com.alibaba.fastjson.util;

/* loaded from: classes.dex */
public class ASMUtils {
    public static final boolean IS_ANDROID;
    public static final java.lang.String JAVA_VM_NAME;

    static {
        java.lang.String property = java.lang.System.getProperty("java.vm.name");
        JAVA_VM_NAME = property;
        IS_ANDROID = isAndroid(property);
    }

    public static boolean checkName(java.lang.String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 1 || cCharAt > 127 || cCharAt == '.') {
                return false;
            }
        }
        return true;
    }

    public static java.lang.String desc(java.lang.Class<?> cls) {
        java.lang.StringBuilder sbO;
        java.lang.String strDesc;
        if (cls.isPrimitive()) {
            return getPrimitiveLetter(cls);
        }
        if (cls.isArray()) {
            sbO = e.a.c.a.a.o("[");
            strDesc = desc(cls.getComponentType());
        } else {
            sbO = e.a.c.a.a.o("L");
            sbO.append(type(cls));
            strDesc = ";";
        }
        sbO.append(strDesc);
        return sbO.toString();
    }

    public static java.lang.String desc(java.lang.reflect.Method method) {
        java.lang.Class<?>[] parameterTypes = method.getParameterTypes();
        java.lang.StringBuilder sb = new java.lang.StringBuilder((parameterTypes.length + 1) << 4);
        sb.append('(');
        for (java.lang.Class<?> cls : parameterTypes) {
            sb.append(desc(cls));
        }
        sb.append(')');
        sb.append(desc(method.getReturnType()));
        return sb.toString();
    }

    public static java.lang.reflect.Type getMethodType(java.lang.Class<?> cls, java.lang.String str) {
        try {
            return cls.getMethod(str, new java.lang.Class[0]).getGenericReturnType();
        } catch (java.lang.Exception unused) {
            return null;
        }
    }

    public static java.lang.String getPrimitiveLetter(java.lang.Class<?> cls) {
        if (java.lang.Integer.TYPE == cls) {
            return "I";
        }
        if (java.lang.Void.TYPE == cls) {
            return "V";
        }
        if (java.lang.Boolean.TYPE == cls) {
            return "Z";
        }
        if (java.lang.Character.TYPE == cls) {
            return "C";
        }
        if (java.lang.Byte.TYPE == cls) {
            return "B";
        }
        if (java.lang.Short.TYPE == cls) {
            return "S";
        }
        if (java.lang.Float.TYPE == cls) {
            return "F";
        }
        if (java.lang.Long.TYPE == cls) {
            return "J";
        }
        if (java.lang.Double.TYPE == cls) {
            return "D";
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Type: ");
        sbO.append(cls.getCanonicalName());
        sbO.append(" is not a primitive type");
        throw new java.lang.IllegalStateException(sbO.toString());
    }

    public static boolean isAndroid(java.lang.String str) {
        if (str == null) {
            return false;
        }
        java.lang.String lowerCase = str.toLowerCase();
        return lowerCase.contains("dalvik") || lowerCase.contains("lemur");
    }

    public static java.lang.String[] lookupParameterNames(java.lang.reflect.AccessibleObject accessibleObject) {
        java.lang.Class<?>[] parameterTypes;
        java.lang.Class<?> declaringClass;
        java.lang.annotation.Annotation[][] parameterAnnotations;
        java.lang.String name;
        java.lang.String strName;
        if (IS_ANDROID) {
            return new java.lang.String[0];
        }
        if (accessibleObject instanceof java.lang.reflect.Method) {
            java.lang.reflect.Method method = (java.lang.reflect.Method) accessibleObject;
            parameterTypes = method.getParameterTypes();
            name = method.getName();
            declaringClass = method.getDeclaringClass();
            parameterAnnotations = com.alibaba.fastjson.util.TypeUtils.getParameterAnnotations(method);
        } else {
            java.lang.reflect.Constructor constructor = (java.lang.reflect.Constructor) accessibleObject;
            parameterTypes = constructor.getParameterTypes();
            declaringClass = constructor.getDeclaringClass();
            parameterAnnotations = com.alibaba.fastjson.util.TypeUtils.getParameterAnnotations(constructor);
            name = "<init>";
        }
        if (parameterTypes.length == 0) {
            return new java.lang.String[0];
        }
        java.lang.ClassLoader classLoader = declaringClass.getClassLoader();
        if (classLoader == null) {
            classLoader = java.lang.ClassLoader.getSystemClassLoader();
        }
        java.io.InputStream resourceAsStream = classLoader.getResourceAsStream(declaringClass.getName().replace('.', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH) + ".class");
        try {
            if (resourceAsStream == null) {
                return new java.lang.String[0];
            }
            com.alibaba.fastjson.asm.ClassReader classReader = new com.alibaba.fastjson.asm.ClassReader(resourceAsStream, false);
            com.alibaba.fastjson.asm.TypeCollector typeCollector = new com.alibaba.fastjson.asm.TypeCollector(name, parameterTypes);
            classReader.accept(typeCollector);
            java.lang.String[] parameterNamesForMethod = typeCollector.getParameterNamesForMethod();
            for (int i = 0; i < parameterNamesForMethod.length; i++) {
                java.lang.annotation.Annotation[] annotationArr = parameterAnnotations[i];
                if (annotationArr != null) {
                    for (int i2 = 0; i2 < annotationArr.length; i2++) {
                        if ((annotationArr[i2] instanceof com.alibaba.fastjson.annotation.JSONField) && (strName = ((com.alibaba.fastjson.annotation.JSONField) annotationArr[i2]).name()) != null && strName.length() > 0) {
                            parameterNamesForMethod[i] = strName;
                        }
                    }
                }
            }
            return parameterNamesForMethod;
        } catch (java.io.IOException unused) {
            return new java.lang.String[0];
        } finally {
            com.alibaba.fastjson.util.IOUtils.close(resourceAsStream);
        }
    }

    public static java.lang.String type(java.lang.Class<?> cls) {
        if (!cls.isArray()) {
            return !cls.isPrimitive() ? cls.getName().replace('.', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH) : getPrimitiveLetter(cls);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        sbO.append(desc(cls.getComponentType()));
        return sbO.toString();
    }
}
