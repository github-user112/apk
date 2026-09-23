package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class TypeCollector {
    public static java.lang.String JSONType = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.annotation.JSONType.class);
    public static final java.util.Map<java.lang.String, java.lang.String> primitives = new java.util.HashMap<java.lang.String, java.lang.String>() { // from class: com.alibaba.fastjson.asm.TypeCollector.1
        {
            put("int", "I");
            put("boolean", "Z");
            put("byte", "B");
            put("char", "C");
            put("short", "S");
            put("float", "F");
            put("long", "J");
            put("double", "D");
        }
    };
    public com.alibaba.fastjson.asm.MethodCollector collector = null;
    public boolean jsonType;
    public final java.lang.String methodName;
    public final java.lang.Class<?>[] parameterTypes;

    public TypeCollector(java.lang.String str, java.lang.Class<?>[] clsArr) {
        this.methodName = str;
        this.parameterTypes = clsArr;
    }

    private boolean correctTypeName(com.alibaba.fastjson.asm.Type type, java.lang.String str) {
        java.lang.String className = type.getClassName();
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        while (className.endsWith("[]")) {
            sb.append('[');
            className = className.substring(0, className.length() - 2);
        }
        if (sb.length() != 0) {
            if (primitives.containsKey(className)) {
                sb.append(primitives.get(className));
            } else {
                sb.append('L');
                sb.append(className);
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SEMI_COLON);
            }
            className = sb.toString();
        }
        return className.equals(str);
    }

    public java.lang.String[] getParameterNamesForMethod() {
        com.alibaba.fastjson.asm.MethodCollector methodCollector = this.collector;
        return (methodCollector == null || !methodCollector.debugInfoPresent) ? new java.lang.String[0] : methodCollector.getResult().split(",");
    }

    public boolean hasJsonType() {
        return this.jsonType;
    }

    public boolean matched() {
        return this.collector != null;
    }

    public void visitAnnotation(java.lang.String str) {
        if (JSONType.equals(str)) {
            this.jsonType = true;
        }
    }

    public com.alibaba.fastjson.asm.MethodCollector visitMethod(int i, java.lang.String str, java.lang.String str2) {
        if (this.collector != null || !str.equals(this.methodName)) {
            return null;
        }
        com.alibaba.fastjson.asm.Type[] argumentTypes = com.alibaba.fastjson.asm.Type.getArgumentTypes(str2);
        int i2 = 0;
        for (com.alibaba.fastjson.asm.Type type : argumentTypes) {
            java.lang.String className = type.getClassName();
            if (className.equals("long") || className.equals("double")) {
                i2++;
            }
        }
        if (argumentTypes.length != this.parameterTypes.length) {
            return null;
        }
        for (int i3 = 0; i3 < argumentTypes.length; i3++) {
            if (!correctTypeName(argumentTypes[i3], this.parameterTypes[i3].getName())) {
                return null;
            }
        }
        com.alibaba.fastjson.asm.MethodCollector methodCollector = new com.alibaba.fastjson.asm.MethodCollector(!java.lang.reflect.Modifier.isStatic(i) ? 1 : 0, argumentTypes.length + i2);
        this.collector = methodCollector;
        return methodCollector;
    }
}
