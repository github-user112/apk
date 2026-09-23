package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONPatch {

    /* renamed from: com.alibaba.fastjson.JSONPatch$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;

        static {
            int[] iArr = new int[com.alibaba.fastjson.JSONPatch.OperationType.values().length];
            $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType = iArr;
            try {
                com.alibaba.fastjson.JSONPatch.OperationType operationType = com.alibaba.fastjson.JSONPatch.OperationType.add;
                iArr[0] = 1;
            } catch (java.lang.NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                com.alibaba.fastjson.JSONPatch.OperationType operationType2 = com.alibaba.fastjson.JSONPatch.OperationType.replace;
                iArr2[2] = 2;
            } catch (java.lang.NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                com.alibaba.fastjson.JSONPatch.OperationType operationType3 = com.alibaba.fastjson.JSONPatch.OperationType.remove;
                iArr3[1] = 3;
            } catch (java.lang.NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                com.alibaba.fastjson.JSONPatch.OperationType operationType4 = com.alibaba.fastjson.JSONPatch.OperationType.copy;
                iArr4[4] = 4;
            } catch (java.lang.NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                com.alibaba.fastjson.JSONPatch.OperationType operationType5 = com.alibaba.fastjson.JSONPatch.OperationType.move;
                iArr5[3] = 5;
            } catch (java.lang.NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$alibaba$fastjson$JSONPatch$OperationType;
                com.alibaba.fastjson.JSONPatch.OperationType operationType6 = com.alibaba.fastjson.JSONPatch.OperationType.test;
                iArr6[5] = 6;
            } catch (java.lang.NoSuchFieldError unused6) {
            }
        }
    }

    @com.alibaba.fastjson.annotation.JSONType(orders = {"op", "from", androidx.core.content.FileProvider.ATTR_PATH, "value"})
    public static class Operation {
        public java.lang.String from;
        public java.lang.String path;

        @com.alibaba.fastjson.annotation.JSONField(name = "op")
        public com.alibaba.fastjson.JSONPatch.OperationType type;
        public java.lang.Object value;
    }

    public enum OperationType {
        add,
        remove,
        replace,
        move,
        copy,
        test
    }

    public static java.lang.Object apply(java.lang.Object obj, java.lang.String str) throws java.lang.ArrayIndexOutOfBoundsException, java.lang.IllegalArgumentException, java.lang.NegativeArraySizeException {
        for (com.alibaba.fastjson.JSONPatch.Operation operation : isObject(str) ? new com.alibaba.fastjson.JSONPatch.Operation[]{(com.alibaba.fastjson.JSONPatch.Operation) com.alibaba.fastjson.JSON.parseObject(str, com.alibaba.fastjson.JSONPatch.Operation.class)} : (com.alibaba.fastjson.JSONPatch.Operation[]) com.alibaba.fastjson.JSON.parseObject(str, com.alibaba.fastjson.JSONPatch.Operation[].class)) {
            com.alibaba.fastjson.JSONPath jSONPathCompile = com.alibaba.fastjson.JSONPath.compile(operation.path);
            int iOrdinal = operation.type.ordinal();
            if (iOrdinal == 0) {
                jSONPathCompile.patchAdd(obj, operation.value, false);
            } else if (iOrdinal == 1) {
                jSONPathCompile.remove(obj);
            } else if (iOrdinal == 2) {
                jSONPathCompile.patchAdd(obj, operation.value, true);
            } else if (iOrdinal == 3 || iOrdinal == 4) {
                com.alibaba.fastjson.JSONPath jSONPathCompile2 = com.alibaba.fastjson.JSONPath.compile(operation.from);
                java.lang.Object objEval = jSONPathCompile2.eval(obj);
                if (operation.type == com.alibaba.fastjson.JSONPatch.OperationType.move && !jSONPathCompile2.remove(obj)) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("json patch move error : ");
                    sbO.append(operation.from);
                    sbO.append(" -> ");
                    sbO.append(operation.path);
                    throw new com.alibaba.fastjson.JSONException(sbO.toString());
                }
                jSONPathCompile.set(obj, objEval);
            } else if (iOrdinal == 5) {
                java.lang.Object objEval2 = jSONPathCompile.eval(obj);
                if (objEval2 == null) {
                    return java.lang.Boolean.valueOf(operation.value == null);
                }
                return java.lang.Boolean.valueOf(objEval2.equals(operation.value));
            }
        }
        return obj;
    }

    public static java.lang.String apply(java.lang.String str, java.lang.String str2) {
        return com.alibaba.fastjson.JSON.toJSONString(apply(com.alibaba.fastjson.JSON.parse(str, com.alibaba.fastjson.parser.Feature.OrderedField), str2));
    }

    public static boolean isObject(java.lang.String str) {
        if (str == null) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                return cCharAt == '{';
            }
        }
        return false;
    }
}
