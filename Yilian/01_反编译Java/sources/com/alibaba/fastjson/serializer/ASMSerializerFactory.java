package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class ASMSerializerFactory implements com.alibaba.fastjson.asm.Opcodes {
    public static final java.lang.String JavaBeanSerializer_desc;
    public static final java.lang.String SerialContext_desc;
    public static final java.lang.String SerializeFilterable_desc;
    public final com.alibaba.fastjson.util.ASMClassLoader classLoader = new com.alibaba.fastjson.util.ASMClassLoader();
    public final java.util.concurrent.atomic.AtomicLong seed = new java.util.concurrent.atomic.AtomicLong();
    public static final java.lang.String JSONSerializer = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JSONSerializer.class);
    public static final java.lang.String ObjectSerializer = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.ObjectSerializer.class);
    public static final java.lang.String ObjectSerializer_desc = e.a.c.a.a.j(e.a.c.a.a.o("L"), ObjectSerializer, ";");
    public static final java.lang.String SerializeWriter = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.SerializeWriter.class);
    public static final java.lang.String SerializeWriter_desc = e.a.c.a.a.j(e.a.c.a.a.o("L"), SerializeWriter, ";");
    public static final java.lang.String JavaBeanSerializer = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JavaBeanSerializer.class);

    public static class Context {
        public static final int features = 5;
        public static int fieldName = 6;
        public static final int obj = 2;
        public static int original = 7;
        public static final int paramFieldName = 3;
        public static final int paramFieldType = 4;
        public static int processValue = 8;
        public static final int serializer = 1;
        public final com.alibaba.fastjson.serializer.SerializeBeanInfo beanInfo;
        public final java.lang.String className;
        public final com.alibaba.fastjson.util.FieldInfo[] getters;
        public final boolean nonContext;
        public final boolean writeDirect;
        public java.util.Map<java.lang.String, java.lang.Integer> variants = new java.util.HashMap();
        public int variantIndex = 9;

        public Context(com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.serializer.SerializeBeanInfo serializeBeanInfo, java.lang.String str, boolean z, boolean z2) {
            this.getters = fieldInfoArr;
            this.className = str;
            this.beanInfo = serializeBeanInfo;
            this.writeDirect = z;
            this.nonContext = z2 || serializeBeanInfo.beanType.isEnum();
        }

        public int getFieldOrinal(java.lang.String str) {
            int length = this.getters.length;
            for (int i = 0; i < length; i++) {
                if (this.getters[i].name.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public int var(java.lang.String str) {
            if (this.variants.get(str) == null) {
                java.util.Map<java.lang.String, java.lang.Integer> map = this.variants;
                int i = this.variantIndex;
                this.variantIndex = i + 1;
                map.put(str, java.lang.Integer.valueOf(i));
            }
            return this.variants.get(str).intValue();
        }

        public int var(java.lang.String str, int i) {
            if (this.variants.get(str) == null) {
                this.variants.put(str, java.lang.Integer.valueOf(this.variantIndex));
                this.variantIndex += i;
            }
            return this.variants.get(str).intValue();
        }
    }

    static {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("L");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.serializer.JavaBeanSerializer.class));
        sbO.append(";");
        JavaBeanSerializer_desc = sbO.toString();
        SerialContext_desc = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.SerialContext.class);
        SerializeFilterable_desc = com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.SerializeFilterable.class);
    }

    private void _after(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "writeAfter", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;C)C"));
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _apply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            str = "java/lang/Byte";
            str2 = "(B)Ljava/lang/Byte;";
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            str = "java/lang/Short";
            str2 = "(S)Ljava/lang/Short;";
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            str = "java/lang/Integer";
            str2 = "(I)Ljava/lang/Integer;";
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            str = "java/lang/Character";
            str2 = "(C)Ljava/lang/Character;";
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            str = "java/lang/Long";
            str2 = "(J)Ljava/lang/Long;";
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            str = "java/lang/Float";
            str2 = "(F)Ljava/lang/Float;";
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            str = "java/lang/Double";
            str2 = "(D)Ljava/lang/Double;";
        } else if (cls != java.lang.Boolean.TYPE) {
            methodVisitor.visitVarInsn(25, context.var(cls == java.math.BigDecimal.class ? "decimal" : cls == java.lang.String.class ? "string" : cls.isEnum() ? "enum" : java.util.List.class.isAssignableFrom(cls) ? "list" : "object"));
            methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "apply", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"));
        } else {
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            str = "java/lang/Boolean";
            str2 = "(Z)Ljava/lang/Boolean;";
        }
        methodVisitor.visitMethodInsn(184, str, "valueOf", str2);
        methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "apply", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"));
    }

    private void _before(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "writeBefore", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;C)C"));
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _decimal(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("decimal"));
        _filters(methodVisitor, fieldInfo, context, label);
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(25, context.var("decimal"));
        methodVisitor.visitJumpInsn(199, label3);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(25, context.var("decimal"));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;Ljava/math/BigDecimal;)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitLabel(label);
    }

    private void _double(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(57, context.var("double", 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(24, context.var("double", 2));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;D)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _enum(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label3);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitTypeInsn(192, "java/lang/Enum");
        methodVisitor.visitVarInsn(58, context.var("enum"));
        _filters(methodVisitor, fieldInfo, context, label3);
        methodVisitor.visitVarInsn(25, context.var("enum"));
        methodVisitor.visitJumpInsn(199, label);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("enum"));
            methodVisitor.visitMethodInsn(182, "java/lang/Enum", "name", "()Ljava/lang/String;");
            str = SerializeWriter;
            str2 = "writeFieldValueStringWithDoubleQuote";
            str3 = "(CLjava/lang/String;Ljava/lang/String;)V";
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitInsn(3);
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldName", "(Ljava/lang/String;Z)V");
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("enum"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            str = JSONSerializer;
            str2 = "writeWithFieldName";
            str3 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
        }
        methodVisitor.visitMethodInsn(182, str, str2, str3);
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitLabel(label3);
    }

    private void _filters(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        if (fieldInfo.fieldTransient) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.SkipTransientField.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(154, label);
        }
        _notWriteDefault(methodVisitor, fieldInfo, context, label);
        if (context.writeDirect) {
            return;
        }
        _apply(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(153, label);
        _processKey(methodVisitor, fieldInfo, context);
        _processValue(methodVisitor, fieldInfo, context, label);
    }

    private void _float(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(56, context.var("float"));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(23, context.var("float"));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;F)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _get(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        methodVisitor.visitVarInsn(25, context.var("entity"));
        if (method != null) {
            java.lang.Class<?> declaringClass = method.getDeclaringClass();
            methodVisitor.visitMethodInsn(declaringClass.isInterface() ? 185 : 182, com.alibaba.fastjson.util.ASMUtils.type(declaringClass), method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(method));
            if (method.getReturnType().equals(fieldInfo.fieldClass)) {
                return;
            }
        } else {
            java.lang.reflect.Field field = fieldInfo.field;
            methodVisitor.visitFieldInsn(180, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(field.getType()));
            if (field.getType().equals(fieldInfo.fieldClass)) {
                return;
            }
        }
        methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.fieldClass));
    }

    private void _getFieldSer(com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_ser_"), ObjectSerializer_desc);
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        java.lang.String str = JSONSerializer;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(Ljava/lang/Class;)");
        sbO.append(ObjectSerializer_desc);
        methodVisitor.visitMethodInsn(182, str, "getObjectWriter", sbO.toString());
        methodVisitor.visitFieldInsn(181, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_ser_"), ObjectSerializer_desc);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_ser_"), ObjectSerializer_desc);
    }

    private void _getListFieldItemSer(com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_ser_"), ObjectSerializer_desc);
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls)));
        java.lang.String str = JSONSerializer;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(Ljava/lang/Class;)");
        sbO.append(ObjectSerializer_desc);
        methodVisitor.visitMethodInsn(182, str, "getObjectWriter", sbO.toString());
        methodVisitor.visitFieldInsn(181, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_ser_"), ObjectSerializer_desc);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_ser_"), ObjectSerializer_desc);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0105  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _if_write_null(com.alibaba.fastjson.asm.MethodVisitor r17, com.alibaba.fastjson.util.FieldInfo r18, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context r19) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ASMSerializerFactory._if_write_null(com.alibaba.fastjson.asm.MethodVisitor, com.alibaba.fastjson.util.FieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory$Context):void");
    }

    private void _int(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, int i, char c2) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(54, i);
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(21, i);
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;" + c2 + ")V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _labelApply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(fieldInfo.label);
        methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "applyLabel", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/String;)Z"));
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _list(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label;
        com.alibaba.fastjson.asm.Label label2;
        com.alibaba.fastjson.util.FieldInfo fieldInfo2;
        com.alibaba.fastjson.asm.Label label3;
        java.lang.String str;
        com.alibaba.fastjson.asm.Label label4;
        com.alibaba.fastjson.asm.Label label5;
        com.alibaba.fastjson.asm.Label label6;
        java.lang.String str2;
        int i;
        java.lang.String str3;
        java.lang.String str4;
        java.lang.String str5;
        int i2;
        int i3;
        int i4;
        com.alibaba.fastjson.asm.Label label7;
        java.lang.String str6;
        java.lang.String str7;
        java.lang.reflect.Type collectionItemType = com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(fieldInfo.fieldType);
        java.lang.Class<?> cls2 = null;
        java.lang.Class<?> cls3 = collectionItemType instanceof java.lang.Class ? (java.lang.Class) collectionItemType : null;
        if (cls3 != java.lang.Object.class && cls3 != java.io.Serializable.class) {
            cls2 = cls3;
        }
        com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label8);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitTypeInsn(192, "java/util/List");
        methodVisitor.visitVarInsn(58, context.var("list"));
        _filters(methodVisitor, fieldInfo, context, label8);
        methodVisitor.visitVarInsn(25, context.var("list"));
        methodVisitor.visitJumpInsn(199, label9);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label10);
        methodVisitor.visitLabel(label9);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
        _writeFieldName(methodVisitor, context);
        methodVisitor.visitVarInsn(25, context.var("list"));
        methodVisitor.visitMethodInsn(185, "java/util/List", "size", "()I");
        methodVisitor.visitVarInsn(54, context.var("size"));
        com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("size"));
        methodVisitor.visitInsn(3);
        methodVisitor.visitJumpInsn(160, label11);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitLdcInsn("[]");
        methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(Ljava/lang/String;)V");
        methodVisitor.visitJumpInsn(167, label12);
        methodVisitor.visitLabel(label11);
        if (!context.nonContext) {
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "setContext", "(Ljava/lang/Object;Ljava/lang/Object;)V");
        }
        if (collectionItemType == java.lang.String.class && context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(25, context.var("list"));
            i4 = 182;
            methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(Ljava/util/List;)V");
            i2 = 1;
            i3 = 25;
            label = label12;
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 91);
            methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
            com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label15 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitInsn(3);
            label = label12;
            methodVisitor.visitVarInsn(54, context.var("i"));
            methodVisitor.visitLabel(label13);
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitVarInsn(21, context.var("size"));
            methodVisitor.visitJumpInsn(162, label15);
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitJumpInsn(153, label14);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 44);
            methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
            methodVisitor.visitLabel(label14);
            methodVisitor.visitVarInsn(25, context.var("list"));
            methodVisitor.visitVarInsn(21, context.var("i"));
            methodVisitor.visitMethodInsn(185, "java/util/List", "get", "(I)Ljava/lang/Object;");
            methodVisitor.visitVarInsn(58, context.var("list_item"));
            com.alibaba.fastjson.asm.Label label16 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label17 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("list_item"));
            methodVisitor.visitJumpInsn(199, label17);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "writeNull", "()V");
            methodVisitor.visitJumpInsn(167, label16);
            methodVisitor.visitLabel(label17);
            com.alibaba.fastjson.asm.Label label18 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label19 = new com.alibaba.fastjson.asm.Label();
            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                label2 = label13;
                fieldInfo2 = fieldInfo;
                label3 = label16;
                str = "out";
                label4 = label15;
                label5 = label18;
                label6 = label19;
                str2 = com.huawei.hms.framework.common.ExceptionCode.WRITE;
            } else {
                str = "out";
                label4 = label15;
                methodVisitor.visitVarInsn(25, context.var("list_item"));
                label2 = label13;
                label3 = label16;
                methodVisitor.visitMethodInsn(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                methodVisitor.visitJumpInsn(166, label19);
                _getListFieldItemSer(context, methodVisitor, fieldInfo, cls2);
                methodVisitor.visitVarInsn(58, context.var("list_item_desc"));
                com.alibaba.fastjson.asm.Label label20 = new com.alibaba.fastjson.asm.Label();
                com.alibaba.fastjson.asm.Label label21 = new com.alibaba.fastjson.asm.Label();
                if (context.writeDirect) {
                    if (context.nonContext && context.writeDirect) {
                        str7 = "writeDirectNonContext";
                        label6 = label19;
                    } else {
                        label6 = label19;
                        str7 = com.huawei.hms.framework.common.ExceptionCode.WRITE;
                    }
                    label7 = label18;
                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                    methodVisitor.visitTypeInsn(193, JavaBeanSerializer);
                    methodVisitor.visitJumpInsn(153, label20);
                    methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                    methodVisitor.visitTypeInsn(192, JavaBeanSerializer);
                    methodVisitor.visitVarInsn(25, 1);
                    methodVisitor.visitVarInsn(25, context.var("list_item"));
                    if (context.nonContext) {
                        methodVisitor.visitInsn(1);
                    } else {
                        methodVisitor.visitVarInsn(21, context.var("i"));
                        methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    }
                    methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                    methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                    java.lang.String str8 = JavaBeanSerializer;
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("(L");
                    str6 = com.huawei.hms.framework.common.ExceptionCode.WRITE;
                    methodVisitor.visitMethodInsn(182, str8, str7, e.a.c.a.a.j(sbO, JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
                    methodVisitor.visitJumpInsn(167, label21);
                    methodVisitor.visitLabel(label20);
                } else {
                    label7 = label18;
                    label6 = label19;
                    str6 = com.huawei.hms.framework.common.ExceptionCode.WRITE;
                }
                methodVisitor.visitVarInsn(25, context.var("list_item_desc"));
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitVarInsn(25, context.var("list_item"));
                if (context.nonContext) {
                    methodVisitor.visitInsn(1);
                } else {
                    methodVisitor.visitVarInsn(21, context.var("i"));
                    methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                }
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
                fieldInfo2 = fieldInfo;
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo2.serialzeFeatures));
                str2 = str6;
                methodVisitor.visitMethodInsn(185, ObjectSerializer, str2, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
                methodVisitor.visitLabel(label21);
                label5 = label7;
                methodVisitor.visitJumpInsn(167, label5);
            }
            methodVisitor.visitLabel(label6);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("list_item"));
            if (context.nonContext) {
                methodVisitor.visitInsn(1);
            } else {
                methodVisitor.visitVarInsn(21, context.var("i"));
                methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
            }
            if (cls2 == null || !java.lang.reflect.Modifier.isPublic(cls2.getModifiers())) {
                i = 182;
                str3 = JSONSerializer;
                str4 = "writeWithFieldName";
                str5 = "(Ljava/lang/Object;Ljava/lang/Object;)V";
            } else {
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) collectionItemType)));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo2.serialzeFeatures));
                str3 = JSONSerializer;
                str4 = "writeWithFieldName";
                str5 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
                i = 182;
            }
            methodVisitor.visitMethodInsn(i, str3, str4, str5);
            methodVisitor.visitLabel(label5);
            methodVisitor.visitLabel(label3);
            methodVisitor.visitIincInsn(context.var("i"), 1);
            methodVisitor.visitJumpInsn(167, label2);
            methodVisitor.visitLabel(label4);
            methodVisitor.visitVarInsn(25, context.var(str));
            methodVisitor.visitVarInsn(16, 93);
            methodVisitor.visitMethodInsn(182, SerializeWriter, str2, "(I)V");
            i2 = 1;
            i3 = 25;
            i4 = 182;
        }
        methodVisitor.visitVarInsn(i3, i2);
        methodVisitor.visitMethodInsn(i4, JSONSerializer, "popContext", "()V");
        methodVisitor.visitLabel(label);
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label10);
        methodVisitor.visitLabel(label8);
    }

    private void _long(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(55, context.var("long", 2));
        _filters(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitVarInsn(22, context.var("long", 2));
        methodVisitor.visitMethodInsn(182, SerializeWriter, "writeFieldValue", "(CLjava/lang/String;J)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label);
    }

    private void _nameApply(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        if (!context.writeDirect) {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "applyName", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/String;)Z"));
            methodVisitor.visitJumpInsn(153, label);
            _labelApply(methodVisitor, fieldInfo, context, label);
        }
        if (fieldInfo.field == null) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.IgnoreNonFieldGetter.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(154, label);
        }
    }

    private void _notWriteDefault(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        int i;
        java.lang.String str;
        if (context.writeDirect) {
            return;
        }
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("notWriteDefaultValue"));
        methodVisitor.visitJumpInsn(153, label2);
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        if (cls == java.lang.Boolean.TYPE) {
            str = "boolean";
        } else if (cls == java.lang.Byte.TYPE) {
            str = "byte";
        } else if (cls == java.lang.Short.TYPE) {
            str = "short";
        } else {
            if (cls != java.lang.Integer.TYPE) {
                if (cls == java.lang.Long.TYPE) {
                    methodVisitor.visitVarInsn(22, context.var("long"));
                    methodVisitor.visitInsn(9);
                    i = 148;
                } else {
                    if (cls != java.lang.Float.TYPE) {
                        if (cls == java.lang.Double.TYPE) {
                            methodVisitor.visitVarInsn(24, context.var("double"));
                            methodVisitor.visitInsn(14);
                            i = 151;
                        }
                        methodVisitor.visitLabel(label2);
                    }
                    methodVisitor.visitVarInsn(23, context.var("float"));
                    methodVisitor.visitInsn(11);
                    i = 149;
                }
                methodVisitor.visitInsn(i);
                methodVisitor.visitJumpInsn(153, label);
                methodVisitor.visitLabel(label2);
            }
            str = "int";
        }
        methodVisitor.visitVarInsn(21, context.var(str));
        methodVisitor.visitJumpInsn(153, label);
        methodVisitor.visitLabel(label2);
    }

    private void _object(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("object"));
        _filters(methodVisitor, fieldInfo, context, label);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitLabel(label);
    }

    private void _processKey(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.String str;
        java.lang.String str2;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("hasNameFilters"));
        methodVisitor.visitJumpInsn(153, label);
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            str = "java/lang/Byte";
            str2 = "(B)Ljava/lang/Byte;";
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            str = "java/lang/Short";
            str2 = "(S)Ljava/lang/Short;";
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            str = "java/lang/Integer";
            str2 = "(I)Ljava/lang/Integer;";
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            str = "java/lang/Character";
            str2 = "(C)Ljava/lang/Character;";
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            str = "java/lang/Long";
            str2 = "(J)Ljava/lang/Long;";
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            str = "java/lang/Float";
            str2 = "(F)Ljava/lang/Float;";
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            str = "java/lang/Double";
            str2 = "(D)Ljava/lang/Double;";
        } else {
            if (cls != java.lang.Boolean.TYPE) {
                methodVisitor.visitVarInsn(25, context.var(cls == java.math.BigDecimal.class ? "decimal" : cls == java.lang.String.class ? "string" : cls.isEnum() ? "enum" : java.util.List.class.isAssignableFrom(cls) ? "list" : "object"));
                methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "processKey", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"));
                methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
                methodVisitor.visitLabel(label);
            }
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            str = "java/lang/Boolean";
            str2 = "(Z)Ljava/lang/Boolean;";
        }
        methodVisitor.visitMethodInsn(184, str, "valueOf", str2);
        methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "processKey", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"));
        methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        methodVisitor.visitLabel(label);
    }

    private void _processValue(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        java.lang.String str;
        java.lang.String str2;
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        if (cls.isPrimitive()) {
            com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(21, context.var("checkValue"));
            methodVisitor.visitJumpInsn(154, label3);
            methodVisitor.visitInsn(1);
            methodVisitor.visitInsn(89);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
            methodVisitor.visitJumpInsn(167, label2);
            methodVisitor.visitLabel(label3);
        }
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(context.getFieldOrinal(fieldInfo.name)));
        java.lang.String str3 = JavaBeanSerializer;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(I)");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.BeanContext.class));
        methodVisitor.visitMethodInsn(182, str3, "getBeanContext", sbO.toString());
        methodVisitor.visitVarInsn(25, 2);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (cls == java.lang.Byte.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("byte"));
            str = "java/lang/Byte";
            str2 = "(B)Ljava/lang/Byte;";
        } else if (cls == java.lang.Short.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("short"));
            str = "java/lang/Short";
            str2 = "(S)Ljava/lang/Short;";
        } else if (cls == java.lang.Integer.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("int"));
            str = "java/lang/Integer";
            str2 = "(I)Ljava/lang/Integer;";
        } else if (cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(21, context.var("char"));
            str = "java/lang/Character";
            str2 = "(C)Ljava/lang/Character;";
        } else if (cls == java.lang.Long.TYPE) {
            methodVisitor.visitVarInsn(22, context.var("long", 2));
            str = "java/lang/Long";
            str2 = "(J)Ljava/lang/Long;";
        } else if (cls == java.lang.Float.TYPE) {
            methodVisitor.visitVarInsn(23, context.var("float"));
            str = "java/lang/Float";
            str2 = "(F)Ljava/lang/Float;";
        } else if (cls == java.lang.Double.TYPE) {
            methodVisitor.visitVarInsn(24, context.var("double", 2));
            str = "java/lang/Double";
            str2 = "(D)Ljava/lang/Double;";
        } else {
            if (cls != java.lang.Boolean.TYPE) {
                methodVisitor.visitVarInsn(25, context.var(cls == java.math.BigDecimal.class ? "decimal" : cls == java.lang.String.class ? "string" : cls.isEnum() ? "enum" : java.util.List.class.isAssignableFrom(cls) ? "list" : "object"));
                methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
                methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
                java.lang.String str4 = JavaBeanSerializer;
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(L");
                sbO2.append(JSONSerializer);
                sbO2.append(";");
                sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.BeanContext.class));
                sbO2.append("Ljava/lang/Object;Ljava/lang/String;");
                sbO2.append("Ljava/lang/Object;");
                sbO2.append(")Ljava/lang/Object;");
                methodVisitor.visitMethodInsn(182, str4, "processValue", sbO2.toString());
                methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
                methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
                methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
                methodVisitor.visitJumpInsn(165, label2);
                _writeObject(methodVisitor, fieldInfo, context, label);
                methodVisitor.visitJumpInsn(167, label);
                methodVisitor.visitLabel(label2);
            }
            methodVisitor.visitVarInsn(21, context.var("boolean"));
            str = "java/lang/Boolean";
            str2 = "(Z)Ljava/lang/Boolean;";
        }
        methodVisitor.visitMethodInsn(184, str, "valueOf", str2);
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        java.lang.String str42 = JavaBeanSerializer;
        java.lang.StringBuilder sbO22 = e.a.c.a.a.o("(L");
        sbO22.append(JSONSerializer);
        sbO22.append(";");
        sbO22.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.serializer.BeanContext.class));
        sbO22.append("Ljava/lang/Object;Ljava/lang/String;");
        sbO22.append("Ljava/lang/Object;");
        sbO22.append(")Ljava/lang/Object;");
        methodVisitor.visitMethodInsn(182, str42, "processValue", sbO22.toString());
        methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.original);
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        methodVisitor.visitJumpInsn(165, label2);
        _writeObject(methodVisitor, fieldInfo, context, label);
        methodVisitor.visitJumpInsn(167, label);
        methodVisitor.visitLabel(label2);
    }

    private void _seperator(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitVarInsn(54, context.var("seperator"));
    }

    private void _string(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.String str;
        java.lang.String str2;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        if (fieldInfo.name.equals(context.beanInfo.typeKey)) {
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
            methodVisitor.visitJumpInsn(154, label);
        }
        _nameApply(methodVisitor, fieldInfo, context, label);
        _get(methodVisitor, context, fieldInfo);
        methodVisitor.visitVarInsn(58, context.var("string"));
        _filters(methodVisitor, fieldInfo, context, label);
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("string"));
        methodVisitor.visitJumpInsn(199, label2);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label3);
        methodVisitor.visitLabel(label2);
        if ("trim".equals(fieldInfo.format)) {
            methodVisitor.visitVarInsn(25, context.var("string"));
            methodVisitor.visitMethodInsn(182, "java/lang/String", "trim", "()Ljava/lang/String;");
            methodVisitor.visitVarInsn(58, context.var("string"));
        }
        if (context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("string"));
            str = SerializeWriter;
            str2 = "writeFieldValueStringWithDoubleQuoteCheck";
        } else {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(21, context.var("seperator"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, context.var("string"));
            str = SerializeWriter;
            str2 = "writeFieldValue";
        }
        methodVisitor.visitMethodInsn(182, str, str2, "(CLjava/lang/String;Ljava/lang/String;)V");
        _seperator(methodVisitor, context);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitLabel(label);
    }

    private void _writeFieldName(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        boolean z = context.writeDirect;
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
        if (z) {
            str = SerializeWriter;
            str2 = "writeFieldNameDirect";
            str3 = "(Ljava/lang/String;)V";
        } else {
            methodVisitor.visitInsn(3);
            str = SerializeWriter;
            str2 = "writeFieldName";
            str3 = "(Ljava/lang/String;Z)V";
        }
        methodVisitor.visitMethodInsn(182, str, str2, str3);
    }

    private void _writeObject(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context, com.alibaba.fastjson.asm.Label label) {
        java.lang.Class<?> cls;
        java.lang.String str;
        com.alibaba.fastjson.asm.Label label2;
        com.alibaba.fastjson.asm.Label label3;
        java.lang.String str2;
        java.lang.String str3;
        java.lang.String format = fieldInfo.getFormat();
        java.lang.Class<?> cls2 = fieldInfo.fieldClass;
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.writeDirect ? context.var("object") : com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(58, context.var("object"));
        methodVisitor.visitJumpInsn(199, label4);
        _if_write_null(methodVisitor, fieldInfo, context);
        methodVisitor.visitJumpInsn(167, label);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
        _writeFieldName(methodVisitor, context);
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        if (!java.lang.reflect.Modifier.isPublic(cls2.getModifiers()) || com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(cls2)) {
            cls = java.lang.String.class;
            str = format;
            label2 = label5;
            label3 = label6;
        } else {
            methodVisitor.visitVarInsn(25, context.var("object"));
            cls = java.lang.String.class;
            methodVisitor.visitMethodInsn(182, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
            methodVisitor.visitJumpInsn(166, label6);
            _getFieldSer(context, methodVisitor, fieldInfo);
            methodVisitor.visitVarInsn(58, context.var("fied_ser"));
            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            methodVisitor.visitTypeInsn(193, JavaBeanSerializer);
            methodVisitor.visitJumpInsn(153, label7);
            boolean z = (fieldInfo.serialzeFeatures & com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
            boolean z2 = (com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask & fieldInfo.serialzeFeatures) != 0;
            java.lang.String str4 = (z || (context.nonContext && context.writeDirect)) ? z2 ? "writeAsArrayNonContext" : "writeDirectNonContext" : z2 ? "writeAsArray" : com.huawei.hms.framework.common.ExceptionCode.WRITE;
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            methodVisitor.visitTypeInsn(192, JavaBeanSerializer);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, 0);
            str = format;
            methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_fieldType"), "Ljava/lang/reflect/Type;");
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            label3 = label6;
            methodVisitor.visitMethodInsn(182, JavaBeanSerializer, str4, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
            methodVisitor.visitJumpInsn(167, label8);
            methodVisitor.visitLabel(label7);
            methodVisitor.visitVarInsn(25, context.var("fied_ser"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("object"));
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_fieldType"), "Ljava/lang/reflect/Type;");
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
            methodVisitor.visitMethodInsn(185, ObjectSerializer, com.huawei.hms.framework.common.ExceptionCode.WRITE, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
            methodVisitor.visitLabel(label8);
            label2 = label5;
            methodVisitor.visitJumpInsn(167, label2);
        }
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.writeDirect ? context.var("object") : com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.processValue);
        if (str != null) {
            methodVisitor.visitLdcInsn(str);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "writeWithFormat", "(Ljava/lang/Object;Ljava/lang/String;)V");
        } else {
            methodVisitor.visitVarInsn(25, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            java.lang.reflect.Type type = fieldInfo.fieldType;
            if ((type instanceof java.lang.Class) && ((java.lang.Class) type).isPrimitive()) {
                str2 = JSONSerializer;
                str3 = "(Ljava/lang/Object;Ljava/lang/Object;)V";
            } else {
                java.lang.Class<?> cls3 = cls;
                if (fieldInfo.fieldClass == cls3) {
                    methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                } else {
                    methodVisitor.visitVarInsn(25, 0);
                    methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_fieldType"), "Ljava/lang/reflect/Type;");
                }
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.serialzeFeatures));
                str2 = JSONSerializer;
                str3 = "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V";
            }
            methodVisitor.visitMethodInsn(182, str2, "writeWithFieldName", str3);
        }
        methodVisitor.visitLabel(label2);
        _seperator(methodVisitor, context);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x022d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x04a7  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x050a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void generateWriteAsArray(java.lang.Class<?> r28, com.alibaba.fastjson.asm.MethodVisitor r29, com.alibaba.fastjson.util.FieldInfo[] r30, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context r31) {
        /*
            Method dump skipped, instructions count: 2054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ASMSerializerFactory.generateWriteAsArray(java.lang.Class, com.alibaba.fastjson.asm.MethodVisitor, com.alibaba.fastjson.util.FieldInfo[], com.alibaba.fastjson.serializer.ASMSerializerFactory$Context):void");
    }

    private void generateWriteMethod(java.lang.Class<?> cls, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context context) {
        com.alibaba.fastjson.asm.Label label;
        java.lang.String str;
        int i;
        int iVar;
        char c2;
        int iVar2;
        char c3;
        boolean z;
        int i2;
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        if (context.writeDirect) {
            label = label2;
        } else {
            com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
            label = label2;
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(154, label4);
            int length = fieldInfoArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    z = false;
                    break;
                }
                int i4 = length;
                if (fieldInfoArr[i3].method != null) {
                    z = true;
                    break;
                } else {
                    i3++;
                    length = i4;
                }
            }
            if (z) {
                methodVisitor.visitVarInsn(25, context.var("out"));
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter.mask));
                methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
                i2 = 153;
            } else {
                i2 = 167;
            }
            methodVisitor.visitJumpInsn(i2, label3);
            methodVisitor.visitLabel(label4);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(183, JavaBeanSerializer, com.huawei.hms.framework.common.ExceptionCode.WRITE, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
            methodVisitor.visitInsn(177);
            methodVisitor.visitLabel(label3);
        }
        if (!context.nonContext) {
            com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "writeReference", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;I)Z"));
            methodVisitor.visitJumpInsn(153, label5);
            methodVisitor.visitInsn(177);
            methodVisitor.visitLabel(label5);
        }
        java.lang.String str2 = context.writeDirect ? context.nonContext ? "writeAsArrayNonContext" : "writeAsArray" : "writeAsArrayNormal";
        if ((context.beanInfo.features & com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask) == 0) {
            com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isEnabled", "(I)Z");
            methodVisitor.visitJumpInsn(153, label6);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(182, context.className, str2, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
            methodVisitor.visitInsn(177);
            methodVisitor.visitLabel(label6);
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(21, 5);
            methodVisitor.visitMethodInsn(182, context.className, str2, e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"));
            methodVisitor.visitInsn(177);
        }
        if (!context.nonContext) {
            methodVisitor.visitVarInsn(25, 1);
            java.lang.String str3 = JSONSerializer;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
            sbO.append(SerialContext_desc);
            methodVisitor.visitMethodInsn(182, str3, "getContext", sbO.toString());
            methodVisitor.visitVarInsn(58, context.var("parent"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, context.var("parent"));
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitVarInsn(25, 3);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(context.beanInfo.features));
            methodVisitor.visitMethodInsn(182, JSONSerializer, "setContext", e.a.c.a.a.j(e.a.c.a.a.o("("), SerialContext_desc, "Ljava/lang/Object;Ljava/lang/Object;I)V"));
        }
        boolean z2 = (context.beanInfo.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask) != 0;
        if (z2 || !context.writeDirect) {
            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
            com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
            if (z2) {
                str = "parent";
                i = 182;
            } else {
                methodVisitor.visitVarInsn(25, 1);
                methodVisitor.visitVarInsn(25, 4);
                methodVisitor.visitVarInsn(25, 2);
                str = "parent";
                i = 182;
                methodVisitor.visitMethodInsn(182, JSONSerializer, "isWriteClassName", "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z");
                methodVisitor.visitJumpInsn(153, label8);
            }
            methodVisitor.visitVarInsn(25, 4);
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(i, "java/lang/Object", "getClass", "()Ljava/lang/Class;");
            methodVisitor.visitJumpInsn(165, label8);
            methodVisitor.visitLabel(label9);
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitVarInsn(16, 123);
            methodVisitor.visitMethodInsn(i, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            if (context.beanInfo.typeKey != null) {
                methodVisitor.visitLdcInsn(context.beanInfo.typeKey);
            } else {
                methodVisitor.visitInsn(1);
            }
            methodVisitor.visitVarInsn(25, 2);
            methodVisitor.visitMethodInsn(182, JavaBeanSerializer, "writeClassName", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONSerializer, ";Ljava/lang/String;Ljava/lang/Object;)V"));
            methodVisitor.visitVarInsn(16, 44);
            methodVisitor.visitJumpInsn(167, label7);
            methodVisitor.visitLabel(label8);
            methodVisitor.visitVarInsn(16, 123);
            methodVisitor.visitLabel(label7);
        } else {
            methodVisitor.visitVarInsn(16, 123);
            str = "parent";
        }
        methodVisitor.visitVarInsn(54, context.var("seperator"));
        if (!context.writeDirect) {
            _before(methodVisitor, context);
        }
        if (!context.writeDirect) {
            methodVisitor.visitVarInsn(25, context.var("out"));
            methodVisitor.visitMethodInsn(182, SerializeWriter, "isNotWriteDefaultValue", "()Z");
            methodVisitor.visitVarInsn(54, context.var("notWriteDefaultValue"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "checkValue", e.a.c.a.a.j(e.a.c.a.a.o("("), SerializeFilterable_desc, ")Z"));
            methodVisitor.visitVarInsn(54, context.var("checkValue"));
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitMethodInsn(182, JSONSerializer, "hasNameFilters", e.a.c.a.a.j(e.a.c.a.a.o("("), SerializeFilterable_desc, ")Z"));
            methodVisitor.visitVarInsn(54, context.var("hasNameFilters"));
        }
        for (com.alibaba.fastjson.util.FieldInfo fieldInfo : fieldInfoArr) {
            java.lang.Class<?> cls2 = fieldInfo.fieldClass;
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitVarInsn(58, com.alibaba.fastjson.serializer.ASMSerializerFactory.Context.fieldName);
            if (cls2 == java.lang.Byte.TYPE || cls2 == java.lang.Short.TYPE || cls2 == java.lang.Integer.TYPE) {
                iVar = context.var(cls2.getName());
                c2 = 'I';
            } else {
                if (cls2 == java.lang.Long.TYPE) {
                    _long(cls, methodVisitor, fieldInfo, context);
                } else if (cls2 == java.lang.Float.TYPE) {
                    _float(cls, methodVisitor, fieldInfo, context);
                } else if (cls2 == java.lang.Double.TYPE) {
                    _double(cls, methodVisitor, fieldInfo, context);
                } else if (cls2 == java.lang.Boolean.TYPE) {
                    iVar2 = context.var("boolean");
                    c3 = 'Z';
                    _int(cls, methodVisitor, fieldInfo, context, iVar2, c3);
                } else if (cls2 == java.lang.Character.TYPE) {
                    iVar = context.var("char");
                    c2 = 'C';
                } else if (cls2 == java.lang.String.class) {
                    _string(cls, methodVisitor, fieldInfo, context);
                } else if (cls2 == java.math.BigDecimal.class) {
                    _decimal(cls, methodVisitor, fieldInfo, context);
                } else if (java.util.List.class.isAssignableFrom(cls2)) {
                    _list(cls, methodVisitor, fieldInfo, context);
                } else if (cls2.isEnum()) {
                    _enum(cls, methodVisitor, fieldInfo, context);
                } else {
                    _object(cls, methodVisitor, fieldInfo, context);
                }
            }
            iVar2 = iVar;
            c3 = c2;
            _int(cls, methodVisitor, fieldInfo, context, iVar2, c3);
        }
        if (!context.writeDirect) {
            _after(methodVisitor, context);
        }
        com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(21, context.var("seperator"));
        methodVisitor.visitIntInsn(16, 123);
        methodVisitor.visitJumpInsn(160, label10);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(16, 123);
        methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
        methodVisitor.visitLabel(label10);
        methodVisitor.visitVarInsn(25, context.var("out"));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitMethodInsn(182, SerializeWriter, com.huawei.hms.framework.common.ExceptionCode.WRITE, "(I)V");
        methodVisitor.visitLabel(label11);
        methodVisitor.visitLabel(label);
        if (context.nonContext) {
            return;
        }
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var(str));
        methodVisitor.visitMethodInsn(182, JSONSerializer, "setContext", e.a.c.a.a.j(e.a.c.a.a.o("("), SerialContext_desc, ")V"));
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0433  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson.serializer.JavaBeanSerializer createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo r34) {
        /*
            Method dump skipped, instructions count: 1499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.ASMSerializerFactory.createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo):com.alibaba.fastjson.serializer.JavaBeanSerializer");
    }
}
