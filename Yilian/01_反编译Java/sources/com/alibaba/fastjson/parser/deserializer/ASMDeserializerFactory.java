package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class ASMDeserializerFactory implements com.alibaba.fastjson.asm.Opcodes {
    public static final java.lang.String DefaultJSONParser = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.class);
    public static final java.lang.String JSONLexerBase = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.JSONLexerBase.class);
    public final com.alibaba.fastjson.util.ASMClassLoader classLoader;
    public final java.util.concurrent.atomic.AtomicLong seed = new java.util.concurrent.atomic.AtomicLong();

    public static class Context {
        public static final int fieldName = 3;
        public static final int parser = 1;
        public static final int type = 2;
        public final com.alibaba.fastjson.util.JavaBeanInfo beanInfo;
        public final java.lang.String className;
        public final java.lang.Class<?> clazz;
        public com.alibaba.fastjson.util.FieldInfo[] fieldInfoList;
        public int variantIndex;
        public final java.util.Map<java.lang.String, java.lang.Integer> variants = new java.util.HashMap();

        public Context(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, int i) {
            this.variantIndex = -1;
            this.className = str;
            this.clazz = javaBeanInfo.clazz;
            this.variantIndex = i;
            this.beanInfo = javaBeanInfo;
            this.fieldInfoList = javaBeanInfo.fields;
        }

        public java.lang.String fieldDeserName(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            java.lang.StringBuilder sbO;
            if (validIdent(fieldInfo.name)) {
                sbO = new java.lang.StringBuilder();
                sbO.append(fieldInfo.name);
                sbO.append("_asm_deser__");
            } else {
                sbO = e.a.c.a.a.o("_asm_deser__");
                sbO.append(com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(fieldInfo.name));
            }
            return sbO.toString();
        }

        public java.lang.String fieldName(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            java.lang.StringBuilder sbO;
            if (validIdent(fieldInfo.name)) {
                sbO = new java.lang.StringBuilder();
                sbO.append(fieldInfo.name);
                sbO.append("_asm_prefix__");
            } else {
                sbO = e.a.c.a.a.o("asm_field_");
                sbO.append(com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(fieldInfo.name));
            }
            return sbO.toString();
        }

        public java.lang.Class<?> getInstClass() {
            java.lang.Class<?> cls = this.beanInfo.builderClass;
            return cls == null ? this.clazz : cls;
        }

        public boolean validIdent(java.lang.String str) {
            for (int i = 0; i < str.length(); i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt == 0) {
                    if (!com.alibaba.fastjson.util.IOUtils.firstIdentifier(cCharAt)) {
                        return false;
                    }
                } else if (!com.alibaba.fastjson.util.IOUtils.isIdent(cCharAt)) {
                    return false;
                }
            }
            return true;
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

        public int var_asm(com.alibaba.fastjson.util.FieldInfo fieldInfo) {
            return var(fieldInfo.name + "_asm");
        }

        public int var_asm(com.alibaba.fastjson.util.FieldInfo fieldInfo, int i) {
            return var(fieldInfo.name + "_asm", i);
        }
    }

    public ASMDeserializerFactory(java.lang.ClassLoader classLoader) {
        this.classLoader = classLoader instanceof com.alibaba.fastjson.util.ASMClassLoader ? (com.alibaba.fastjson.util.ASMClassLoader) classLoader : new com.alibaba.fastjson.util.ASMClassLoader(classLoader);
    }

    private void _batchSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        _batchSet(context, methodVisitor, true);
    }

    private void _batchSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, boolean z) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
            if (z) {
                _isFlag(methodVisitor, context, i, label);
            }
            _loadAndSet(context, methodVisitor, context.fieldInfoList[i]);
            if (z) {
                methodVisitor.visitLabel(label);
            }
        }
    }

    private void _createInstance(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        if (java.lang.reflect.Modifier.isPublic(context.beanInfo.defaultConstructor.getModifiers())) {
            com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "createInstance", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"), null, null);
            methodWriter.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
            methodWriter.visitInsn(89);
            methodWriter.visitMethodInsn(183, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()), "<init>", "()V");
            methodWriter.visitInsn(176);
            methodWriter.visitMaxs(3, 3);
            methodWriter.visitEnd();
        }
    }

    private void _createInstance(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        java.lang.reflect.Constructor<?> constructor = context.beanInfo.defaultConstructor;
        if (java.lang.reflect.Modifier.isPublic(constructor.getModifiers())) {
            methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
            methodVisitor.visitInsn(89);
            methodVisitor.visitMethodInsn(183, com.alibaba.fastjson.util.ASMUtils.type(constructor.getDeclaringClass()), "<init>", "()V");
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitVarInsn(25, 1);
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitFieldInsn(180, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "clazz", "Ljava/lang/Class;");
            methodVisitor.visitMethodInsn(183, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "createInstance", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;)Ljava/lang/Object;"));
            methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()));
        }
        methodVisitor.visitVarInsn(58, context.var("instance"));
    }

    private void _deserObject(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, int i) {
        _getFieldDeser(context, methodVisitor, fieldInfo);
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        if ((fieldInfo.parserFeatures & com.alibaba.fastjson.parser.Feature.SupportArrayToBean.mask) != 0) {
            methodVisitor.visitInsn(89);
            methodVisitor.visitTypeInsn(193, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class));
            methodVisitor.visitJumpInsn(153, label);
            methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class));
            methodVisitor.visitVarInsn(25, 1);
            if (fieldInfo.fieldType instanceof java.lang.Class) {
                methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
            } else {
                methodVisitor.visitVarInsn(25, 0);
                methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i));
                methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
            }
            methodVisitor.visitLdcInsn(fieldInfo.name);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(fieldInfo.parserFeatures));
            methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "deserialze", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;"));
            methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls));
            methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
            methodVisitor.visitJumpInsn(167, label2);
            methodVisitor.visitLabel(label);
        }
        methodVisitor.visitVarInsn(25, 1);
        if (fieldInfo.fieldType instanceof java.lang.Class) {
            methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        } else {
            methodVisitor.visitVarInsn(25, 0);
            methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i));
            methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
        }
        methodVisitor.visitLdcInsn(fieldInfo.name);
        methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "deserialze", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls));
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitLabel(label2);
    }

    private void _deserialize_endCheck(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label) {
        methodVisitor.visitIntInsn(21, context.var("matchedCount"));
        methodVisitor.visitJumpInsn(158, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
    }

    /* JADX WARN: Removed duplicated region for block: B:138:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0955 A[PHI: r12 r13 r14 r18 r19 r20
  0x0955: PHI (r12v6 com.alibaba.fastjson.asm.MethodWriter) = (r12v5 com.alibaba.fastjson.asm.MethodWriter), (r12v8 com.alibaba.fastjson.asm.MethodWriter) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]
  0x0955: PHI (r13v6 com.alibaba.fastjson.asm.Label) = (r13v5 com.alibaba.fastjson.asm.Label), (r13v7 com.alibaba.fastjson.asm.Label) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]
  0x0955: PHI (r14v5 com.alibaba.fastjson.asm.Label) = (r14v4 com.alibaba.fastjson.asm.Label), (r14v6 com.alibaba.fastjson.asm.Label) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]
  0x0955: PHI (r18v3 java.lang.String) = (r18v2 java.lang.String), (r18v4 java.lang.String) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]
  0x0955: PHI (r19v4 int) = (r19v3 int), (r19v5 int) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]
  0x0955: PHI (r20v2 java.lang.String) = (r20v1 java.lang.String), (r20v3 java.lang.String) binds: [B:144:0x0953, B:141:0x0936] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0487  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _deserialze(com.alibaba.fastjson.asm.ClassWriter r25, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context r26) {
        /*
            Method dump skipped, instructions count: 2755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory._deserialze(com.alibaba.fastjson.asm.ClassWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory$Context):void");
    }

    private void _deserialzeArrayMapping(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> cls;
        int i;
        int i2;
        com.alibaba.fastjson.asm.MethodWriter methodWriter;
        int i3;
        java.lang.String str;
        java.lang.String str2;
        java.lang.String str3;
        int iVar_asm;
        int i4;
        int i5;
        java.lang.String str4;
        java.lang.String str5;
        java.lang.String str6;
        com.alibaba.fastjson.asm.Label label;
        int i6;
        int iVar_asm2;
        java.lang.Class<com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer> cls2 = com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class;
        com.alibaba.fastjson.asm.MethodWriter methodWriter2 = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "deserialzeArrayMapping", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"), null, null);
        defineVarLexer(context, methodWriter2);
        methodWriter2.visitVarInsn(25, context.var("lexer"));
        methodWriter2.visitVarInsn(25, 1);
        java.lang.String str7 = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
        methodWriter2.visitMethodInsn(182, str7, "getSymbolTable", sbO.toString());
        java.lang.String str8 = JSONLexerBase;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
        sbO2.append(")Ljava/lang/String;");
        methodWriter2.visitMethodInsn(182, str8, "scanTypeName", sbO2.toString());
        methodWriter2.visitVarInsn(58, context.var("typeName"));
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodWriter2.visitVarInsn(25, context.var("typeName"));
        methodWriter2.visitJumpInsn(198, label2);
        methodWriter2.visitVarInsn(25, 1);
        java.lang.String str9 = DefaultJSONParser;
        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("()");
        sbO3.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodWriter2.visitMethodInsn(182, str9, "getConfig", sbO3.toString());
        methodWriter2.visitVarInsn(25, 0);
        methodWriter2.visitFieldInsn(180, com.alibaba.fastjson.util.ASMUtils.type(cls2), "beanInfo", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class));
        methodWriter2.visitVarInsn(25, context.var("typeName"));
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(cls2);
        java.lang.StringBuilder sbO4 = e.a.c.a.a.o("(");
        sbO4.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        sbO4.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class));
        sbO4.append("Ljava/lang/String;)");
        sbO4.append(com.alibaba.fastjson.util.ASMUtils.desc(cls2));
        methodWriter2.visitMethodInsn(184, strType, "getSeeAlso", sbO4.toString());
        methodWriter2.visitVarInsn(58, context.var("userTypeDeser"));
        methodWriter2.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter2.visitTypeInsn(193, com.alibaba.fastjson.util.ASMUtils.type(cls2));
        methodWriter2.visitJumpInsn(153, label2);
        methodWriter2.visitVarInsn(25, context.var("userTypeDeser"));
        methodWriter2.visitVarInsn(25, 1);
        methodWriter2.visitVarInsn(25, 2);
        methodWriter2.visitVarInsn(25, 3);
        methodWriter2.visitVarInsn(25, 4);
        methodWriter2.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(cls2), "deserialzeArrayMapping", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodWriter2.visitInsn(176);
        methodWriter2.visitLabel(label2);
        _createInstance(context, methodWriter2);
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = context.beanInfo.sortedFields;
        int length = fieldInfoArr.length;
        int i7 = 0;
        while (i7 < length) {
            boolean z = i7 == length + (-1);
            int i8 = z ? 93 : 44;
            com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldInfoArr[i7];
            java.lang.Class<?> cls3 = fieldInfo.fieldClass;
            java.lang.reflect.Type type = fieldInfo.fieldType;
            com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = fieldInfoArr;
            if (cls3 == java.lang.Byte.TYPE || cls3 == java.lang.Short.TYPE || cls3 == java.lang.Integer.TYPE) {
                cls = cls2;
                i = length;
                i2 = i7;
                methodWriter = methodWriter2;
                methodWriter.visitVarInsn(25, context.var("lexer"));
                methodWriter.visitVarInsn(16, i8);
                methodWriter.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                methodWriter.visitVarInsn(54, context.var_asm(fieldInfo));
            } else {
                i = length;
                boolean z2 = z;
                if (cls3 == java.lang.Byte.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i8);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Byte", "valueOf", "(B)Ljava/lang/Byte;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    label = new com.alibaba.fastjson.asm.Label();
                } else if (cls3 == java.lang.Short.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i8);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Short", "valueOf", "(S)Ljava/lang/Short;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    label = new com.alibaba.fastjson.asm.Label();
                } else if (cls3 == java.lang.Integer.class) {
                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                    methodWriter2.visitVarInsn(16, i8);
                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                    methodWriter2.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                    label = new com.alibaba.fastjson.asm.Label();
                } else {
                    if (cls3 == java.lang.Long.TYPE) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i8);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                        i6 = 55;
                    } else if (cls3 == java.lang.Long.class) {
                        methodWriter2.visitVarInsn(25, context.var("lexer"));
                        methodWriter2.visitVarInsn(16, i8);
                        methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                        methodWriter2.visitMethodInsn(184, "java/lang/Long", "valueOf", "(J)Ljava/lang/Long;");
                        methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                        label = new com.alibaba.fastjson.asm.Label();
                    } else {
                        if (cls3 == java.lang.Boolean.TYPE) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            str4 = JSONLexerBase;
                            str5 = "scanBoolean";
                            str6 = "(C)Z";
                            i5 = 182;
                        } else if (cls3 == java.lang.Float.TYPE) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                            i6 = 56;
                            iVar_asm2 = context.var_asm(fieldInfo);
                            methodWriter2.visitVarInsn(i6, iVar_asm2);
                            cls = cls2;
                            i3 = i7;
                            i2 = i3;
                            methodWriter = methodWriter2;
                        } else if (cls3 == java.lang.Float.class) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanFloat", "(C)F");
                            methodWriter2.visitMethodInsn(184, "java/lang/Float", "valueOf", "(F)Ljava/lang/Float;");
                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                            label = new com.alibaba.fastjson.asm.Label();
                        } else if (cls3 == java.lang.Double.TYPE) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                            i6 = 57;
                        } else if (cls3 == java.lang.Double.class) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanDouble", "(C)D");
                            methodWriter2.visitMethodInsn(184, "java/lang/Double", "valueOf", "(D)Ljava/lang/Double;");
                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                            label = new com.alibaba.fastjson.asm.Label();
                        } else if (cls3 == java.lang.Character.TYPE) {
                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                            methodWriter2.visitVarInsn(16, i8);
                            i5 = 182;
                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanString", "(C)Ljava/lang/String;");
                            methodWriter2.visitInsn(3);
                            str4 = "java/lang/String";
                            str5 = "charAt";
                            str6 = "(I)C";
                        } else {
                            if (cls3 == java.lang.String.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(16, i8);
                                str = JSONLexerBase;
                                str2 = "scanString";
                                str3 = "(C)Ljava/lang/String;";
                            } else if (cls3 == java.math.BigDecimal.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(16, i8);
                                str = JSONLexerBase;
                                str2 = "scanDecimal";
                                str3 = "(C)Ljava/math/BigDecimal;";
                            } else if (cls3 == java.util.Date.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(16, i8);
                                str = JSONLexerBase;
                                str2 = "scanDate";
                                str3 = "(C)Ljava/util/Date;";
                            } else if (cls3 == java.util.UUID.class) {
                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                methodWriter2.visitVarInsn(16, i8);
                                str = JSONLexerBase;
                                str2 = "scanUUID";
                                str3 = "(C)Ljava/util/UUID;";
                            } else {
                                if (cls3.isEnum()) {
                                    com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
                                    com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
                                    com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
                                    com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
                                    i3 = i7;
                                    cls = cls2;
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                                    methodWriter2.visitInsn(89);
                                    methodWriter2.visitVarInsn(54, context.var("ch"));
                                    methodWriter2.visitLdcInsn(110);
                                    methodWriter2.visitJumpInsn(159, label6);
                                    methodWriter2.visitVarInsn(21, context.var("ch"));
                                    methodWriter2.visitLdcInsn(34);
                                    methodWriter2.visitJumpInsn(160, label3);
                                    methodWriter2.visitLabel(label6);
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                                    methodWriter2.visitVarInsn(25, 1);
                                    java.lang.String str10 = DefaultJSONParser;
                                    java.lang.StringBuilder sbO5 = e.a.c.a.a.o("()");
                                    sbO5.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
                                    methodWriter2.visitMethodInsn(182, str10, "getSymbolTable", sbO5.toString());
                                    methodWriter2.visitVarInsn(16, i8);
                                    java.lang.String str11 = JSONLexerBase;
                                    java.lang.StringBuilder sbO6 = e.a.c.a.a.o("(Ljava/lang/Class;");
                                    sbO6.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.SymbolTable.class));
                                    sbO6.append("C)Ljava/lang/Enum;");
                                    methodWriter2.visitMethodInsn(182, str11, "scanEnum", sbO6.toString());
                                    methodWriter2.visitJumpInsn(167, label5);
                                    methodWriter2.visitLabel(label3);
                                    methodWriter2.visitVarInsn(21, context.var("ch"));
                                    methodWriter2.visitLdcInsn(48);
                                    methodWriter2.visitJumpInsn(161, label4);
                                    methodWriter2.visitVarInsn(21, context.var("ch"));
                                    methodWriter2.visitLdcInsn(57);
                                    methodWriter2.visitJumpInsn(163, label4);
                                    _getFieldDeser(context, methodWriter2, fieldInfo);
                                    methodWriter2.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.EnumDeserializer.class));
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitVarInsn(16, i8);
                                    methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanInt", "(C)I");
                                    methodWriter2.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.EnumDeserializer.class), "valueOf", "(I)Ljava/lang/Enum;");
                                    methodWriter2.visitJumpInsn(167, label5);
                                    methodWriter2.visitLabel(label4);
                                    methodWriter2.visitVarInsn(25, 0);
                                    methodWriter2.visitVarInsn(25, context.var("lexer"));
                                    methodWriter2.visitVarInsn(16, i8);
                                    methodWriter2.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(cls), "scanEnum", e.a.c.a.a.j(e.a.c.a.a.o("(L"), JSONLexerBase, ";C)Ljava/lang/Enum;"));
                                    methodWriter2.visitLabel(label5);
                                    methodWriter2.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls3));
                                    methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                } else {
                                    cls = cls2;
                                    i3 = i7;
                                    if (java.util.Collection.class.isAssignableFrom(cls3)) {
                                        java.lang.Class<?> collectionItemClass = com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(type);
                                        if (collectionItemClass == java.lang.String.class) {
                                            if (cls3 == java.util.List.class || cls3 == java.util.Collections.class || cls3 == java.util.ArrayList.class) {
                                                methodWriter2.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.ArrayList.class));
                                                methodWriter2.visitInsn(89);
                                                methodWriter2.visitMethodInsn(183, com.alibaba.fastjson.util.ASMUtils.type(java.util.ArrayList.class), "<init>", "()V");
                                            } else {
                                                methodWriter2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls3)));
                                                methodWriter2.visitMethodInsn(184, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.util.TypeUtils.class), "createCollection", "(Ljava/lang/Class;)Ljava/util/Collection;");
                                            }
                                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitVarInsn(25, context.var_asm(fieldInfo));
                                            methodWriter2.visitVarInsn(16, i8);
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanStringArray", "(Ljava/util/Collection;C)V");
                                            com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                                            methodWriter2.visitLdcInsn(5);
                                            methodWriter2.visitJumpInsn(160, label7);
                                            methodWriter2.visitInsn(1);
                                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                            methodWriter2.visitLabel(label7);
                                        } else {
                                            com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                            methodWriter2.visitVarInsn(54, context.var("token"));
                                            methodWriter2.visitVarInsn(21, context.var("token"));
                                            int i9 = i3 == 0 ? 14 : 16;
                                            methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(i9));
                                            methodWriter2.visitJumpInsn(159, label8);
                                            methodWriter2.visitVarInsn(25, 1);
                                            methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(i9));
                                            methodWriter2.visitMethodInsn(182, DefaultJSONParser, "throwException", "(I)V");
                                            methodWriter2.visitLabel(label8);
                                            com.alibaba.fastjson.asm.Label label9 = new com.alibaba.fastjson.asm.Label();
                                            com.alibaba.fastjson.asm.Label label10 = new com.alibaba.fastjson.asm.Label();
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                                            methodWriter2.visitVarInsn(16, 91);
                                            methodWriter2.visitJumpInsn(160, label9);
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "next", "()C");
                                            methodWriter2.visitInsn(87);
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitLdcInsn(14);
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
                                            methodWriter2.visitJumpInsn(167, label10);
                                            methodWriter2.visitLabel(label9);
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitLdcInsn(14);
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
                                            methodWriter2.visitLabel(label10);
                                            i2 = i3;
                                            _newCollection(methodWriter2, cls3, i2, false);
                                            methodWriter2.visitInsn(89);
                                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                            _getCollectionFieldItemDeser(context, methodWriter2, fieldInfo, collectionItemClass);
                                            methodWriter2.visitVarInsn(25, 1);
                                            methodWriter2.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(collectionItemClass)));
                                            methodWriter2.visitVarInsn(25, 3);
                                            java.lang.String strType2 = com.alibaba.fastjson.util.ASMUtils.type(cls);
                                            java.lang.StringBuilder sbO7 = e.a.c.a.a.o("(Ljava/util/Collection;");
                                            sbO7.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
                                            sbO7.append("L");
                                            methodWriter2.visitMethodInsn(184, strType2, "parseArray", e.a.c.a.a.j(sbO7, DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)V"));
                                        }
                                    } else {
                                        i2 = i3;
                                        if (cls3.isArray()) {
                                            methodWriter2.visitVarInsn(25, context.var("lexer"));
                                            methodWriter2.visitLdcInsn(14);
                                            methodWriter2.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
                                            methodWriter2.visitVarInsn(25, 1);
                                            methodWriter2.visitVarInsn(25, 0);
                                            methodWriter2.visitLdcInsn(java.lang.Integer.valueOf(i2));
                                            methodWriter2.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(cls), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                                            methodWriter2.visitMethodInsn(182, DefaultJSONParser, "parseObject", "(Ljava/lang/reflect/Type;)Ljava/lang/Object;");
                                            methodWriter2.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls3));
                                            methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                        } else {
                                            com.alibaba.fastjson.asm.Label label11 = new com.alibaba.fastjson.asm.Label();
                                            com.alibaba.fastjson.asm.Label label12 = new com.alibaba.fastjson.asm.Label();
                                            if (cls3 == java.util.Date.class) {
                                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                                methodWriter2.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
                                                methodWriter2.visitLdcInsn(49);
                                                methodWriter2.visitJumpInsn(160, label11);
                                                methodWriter2.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.Date.class));
                                                methodWriter2.visitInsn(89);
                                                methodWriter2.visitVarInsn(25, context.var("lexer"));
                                                methodWriter2.visitVarInsn(16, i8);
                                                methodWriter2.visitMethodInsn(182, JSONLexerBase, "scanLong", "(C)J");
                                                methodWriter2.visitMethodInsn(183, com.alibaba.fastjson.util.ASMUtils.type(java.util.Date.class), "<init>", "(J)V");
                                                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                                                methodWriter2.visitJumpInsn(167, label12);
                                            }
                                            methodWriter2.visitLabel(label11);
                                            _quickNextToken(context, methodWriter2, 14);
                                            methodWriter = methodWriter2;
                                            _deserObject(context, methodWriter2, fieldInfo, cls3, i2);
                                            methodWriter.visitVarInsn(25, context.var("lexer"));
                                            methodWriter.visitMethodInsn(182, JSONLexerBase, "token", "()I");
                                            methodWriter.visitLdcInsn(15);
                                            methodWriter.visitJumpInsn(159, label12);
                                            methodWriter.visitVarInsn(25, 0);
                                            methodWriter.visitVarInsn(25, context.var("lexer"));
                                            methodWriter.visitLdcInsn(java.lang.Integer.valueOf(!z2 ? 16 : 15));
                                            java.lang.String strType3 = com.alibaba.fastjson.util.ASMUtils.type(cls);
                                            java.lang.StringBuilder sbO8 = e.a.c.a.a.o("(");
                                            sbO8.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.JSONLexer.class));
                                            sbO8.append("I)V");
                                            methodWriter.visitMethodInsn(183, strType3, "check", sbO8.toString());
                                            methodWriter.visitLabel(label12);
                                        }
                                    }
                                    methodWriter = methodWriter2;
                                }
                                i2 = i3;
                                methodWriter = methodWriter2;
                            }
                            methodWriter2.visitMethodInsn(182, str, str2, str3);
                            iVar_asm = context.var_asm(fieldInfo);
                            i4 = 58;
                            methodWriter2.visitVarInsn(i4, iVar_asm);
                            cls = cls2;
                            i3 = i7;
                            i2 = i3;
                            methodWriter = methodWriter2;
                        }
                        methodWriter2.visitMethodInsn(i5, str4, str5, str6);
                        iVar_asm = context.var_asm(fieldInfo);
                        i4 = 54;
                        methodWriter2.visitVarInsn(i4, iVar_asm);
                        cls = cls2;
                        i3 = i7;
                        i2 = i3;
                        methodWriter = methodWriter2;
                    }
                    iVar_asm2 = context.var_asm(fieldInfo, 2);
                    methodWriter2.visitVarInsn(i6, iVar_asm2);
                    cls = cls2;
                    i3 = i7;
                    i2 = i3;
                    methodWriter = methodWriter2;
                }
                methodWriter2.visitVarInsn(25, context.var("lexer"));
                methodWriter2.visitFieldInsn(180, JSONLexerBase, "matchStat", "I");
                methodWriter2.visitLdcInsn(5);
                methodWriter2.visitJumpInsn(160, label);
                methodWriter2.visitInsn(1);
                methodWriter2.visitVarInsn(58, context.var_asm(fieldInfo));
                methodWriter2.visitLabel(label);
                cls = cls2;
                i3 = i7;
                i2 = i3;
                methodWriter = methodWriter2;
            }
            int i10 = i2 + 1;
            fieldInfoArr = fieldInfoArr2;
            methodWriter2 = methodWriter;
            length = i;
            cls2 = cls;
            i7 = i10;
        }
        com.alibaba.fastjson.asm.MethodWriter methodWriter3 = methodWriter2;
        _batchSet(context, methodWriter3, false);
        com.alibaba.fastjson.asm.Label label13 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label14 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label15 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label16 = new com.alibaba.fastjson.asm.Label();
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        methodWriter3.visitInsn(89);
        methodWriter3.visitVarInsn(54, context.var("ch"));
        methodWriter3.visitVarInsn(16, 44);
        methodWriter3.visitJumpInsn(160, label14);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label16);
        methodWriter3.visitLabel(label14);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 93);
        methodWriter3.visitJumpInsn(160, label15);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(15);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label16);
        methodWriter3.visitLabel(label15);
        methodWriter3.visitVarInsn(21, context.var("ch"));
        methodWriter3.visitVarInsn(16, 26);
        methodWriter3.visitJumpInsn(160, label13);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodWriter3.visitInsn(87);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(20);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodWriter3.visitJumpInsn(167, label16);
        methodWriter3.visitLabel(label13);
        methodWriter3.visitVarInsn(25, context.var("lexer"));
        methodWriter3.visitLdcInsn(16);
        methodWriter3.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodWriter3.visitLabel(label16);
        methodWriter3.visitVarInsn(25, context.var("instance"));
        methodWriter3.visitInsn(176);
        methodWriter3.visitMaxs(5, context.variantIndex);
        methodWriter3.visitEnd();
    }

    private void _deserialze_list_obj(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, java.lang.Class<?> cls2, int i) {
        java.lang.String str;
        java.lang.String str2;
        int i2;
        int i3;
        java.lang.String str3;
        int i4;
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(153, label2);
        _setFlag(methodVisitor, context, i);
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(8);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label3);
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label6 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(21);
        methodVisitor.visitJumpInsn(160, label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        _newCollection(methodVisitor, cls, i, true);
        methodVisitor.visitJumpInsn(167, label4);
        methodVisitor.visitLabel(label5);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(14);
        methodVisitor.visitJumpInsn(159, label6);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(12);
        methodVisitor.visitJumpInsn(160, label);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
        methodVisitor.visitInsn(3);
        methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "deserialze", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        methodVisitor.visitVarInsn(58, context.var("list_item_value"));
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var("list_item_value"));
        if (cls.isInterface()) {
            str = "list_item_value";
            methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        } else {
            str = "list_item_value";
            methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
        }
        methodVisitor.visitInsn(87);
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label6);
        _newCollection(methodVisitor, cls, i, false);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        boolean zIsPrimitive2 = com.alibaba.fastjson.parser.ParserConfig.isPrimitive2(fieldInfo.fieldClass);
        _getCollectionFieldItemDeser(context, methodVisitor, fieldInfo, cls2);
        if (zIsPrimitive2) {
            methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "getFastMatchToken", "()I");
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            str2 = "(I)V";
            methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", str2);
        } else {
            str2 = "(I)V";
            methodVisitor.visitInsn(87);
            methodVisitor.visitLdcInsn(12);
            methodVisitor.visitVarInsn(54, context.var("fastMatchToken"));
            _quickNextToken(context, methodVisitor, 12);
        }
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str4 = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitMethodInsn(182, str4, "getContext", sbO.toString());
        methodVisitor.visitVarInsn(58, context.var("listContext"));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitLdcInsn(fieldInfo.name);
        java.lang.String str5 = DefaultJSONParser;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(Ljava/lang/Object;Ljava/lang/Object;)");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitMethodInsn(182, str5, "setContext", sbO2.toString());
        methodVisitor.visitInsn(87);
        com.alibaba.fastjson.asm.Label label7 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label8 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitInsn(3);
        methodVisitor.visitVarInsn(54, context.var("i"));
        methodVisitor.visitLabel(label7);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(159, label8);
        methodVisitor.visitVarInsn(25, 0);
        java.lang.String str6 = str2;
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls2)));
        methodVisitor.visitVarInsn(21, context.var("i"));
        methodVisitor.visitMethodInsn(184, "java/lang/Integer", "valueOf", "(I)Ljava/lang/Integer;");
        methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class), "deserialze", e.a.c.a.a.j(e.a.c.a.a.o("(L"), DefaultJSONParser, ";Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;"));
        java.lang.String str7 = str;
        methodVisitor.visitVarInsn(58, context.var(str7));
        methodVisitor.visitIincInsn(context.var("i"), 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitVarInsn(25, context.var(str7));
        if (cls.isInterface()) {
            methodVisitor.visitMethodInsn(185, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
            i3 = 87;
            i2 = 182;
        } else {
            i2 = 182;
            methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(cls), "add", "(Ljava/lang/Object;)Z");
            i3 = 87;
        }
        methodVisitor.visitInsn(i3);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
        methodVisitor.visitMethodInsn(i2, DefaultJSONParser, "checkListResolve", "(Ljava/util/Collection;)V");
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(i2, JSONLexerBase, "token", "()I");
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitJumpInsn(160, label7);
        if (zIsPrimitive2) {
            methodVisitor.visitVarInsn(25, context.var("lexer"));
            methodVisitor.visitVarInsn(21, context.var("fastMatchToken"));
            methodVisitor.visitMethodInsn(i2, JSONLexerBase, "nextToken", str6);
            i4 = 167;
            str3 = "token";
        } else {
            str3 = "token";
            _quickNextToken(context, methodVisitor, 12);
            i4 = 167;
        }
        methodVisitor.visitJumpInsn(i4, label7);
        methodVisitor.visitLabel(label8);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var("listContext"));
        java.lang.String str8 = DefaultJSONParser;
        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("(");
        sbO3.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        sbO3.append(")V");
        methodVisitor.visitMethodInsn(182, str8, "setContext", sbO3.toString());
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, str3, "()I");
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitJumpInsn(160, label);
        _quickNextTokenComma(context, methodVisitor);
        methodVisitor.visitLabel(label2);
    }

    private void _deserialze_obj(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.asm.Label label, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls, int i) {
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldName(fieldInfo), "[C");
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "matchField", "([C)Z");
        methodVisitor.visitJumpInsn(154, label2);
        methodVisitor.visitInsn(1);
        methodVisitor.visitVarInsn(58, context.var_asm(fieldInfo));
        methodVisitor.visitJumpInsn(167, label3);
        methodVisitor.visitLabel(label2);
        _setFlag(methodVisitor, context, i);
        methodVisitor.visitVarInsn(21, context.var("matchedCount"));
        methodVisitor.visitInsn(4);
        methodVisitor.visitInsn(96);
        methodVisitor.visitVarInsn(54, context.var("matchedCount"));
        _deserObject(context, methodVisitor, fieldInfo, cls, i);
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "getResolveStatus", "()I");
        methodVisitor.visitLdcInsn(1);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class));
        methodVisitor.visitMethodInsn(182, str, "getLastResolveTask", sbO.toString());
        methodVisitor.visitVarInsn(58, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str2 = DefaultJSONParser;
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("()");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitMethodInsn(182, str2, "getContext", sbO2.toString());
        methodVisitor.visitFieldInsn(181, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class), "ownerContext", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        methodVisitor.visitVarInsn(25, context.var("resolveTask"));
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitLdcInsn(fieldInfo.name);
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class);
        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("(Ljava/lang/String;)");
        sbO3.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.FieldDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getFieldDeserializer", sbO3.toString());
        methodVisitor.visitFieldInsn(181, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask.class), "fieldDeserializer", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.FieldDeserializer.class));
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitLdcInsn(0);
        methodVisitor.visitMethodInsn(182, DefaultJSONParser, "setResolveStatus", "(I)V");
        methodVisitor.visitLabel(label3);
    }

    private void _getCollectionFieldItemDeser(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo, java.lang.Class<?> cls) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str, "getConfig", sbO.toString());
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(cls)));
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParserConfig.class);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(Ljava/lang/reflect/Type;)");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getDeserializer", sbO2.toString());
        methodVisitor.visitFieldInsn(181, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
    }

    private void _getFieldDeser(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitJumpInsn(199, label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitVarInsn(25, 1);
        java.lang.String str = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("()");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        methodVisitor.visitMethodInsn(182, str, "getConfig", sbO.toString());
        methodVisitor.visitLdcInsn(com.alibaba.fastjson.asm.Type.getType(com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass)));
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParserConfig.class);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(Ljava/lang/reflect/Type;)");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitMethodInsn(182, strType, "getDeserializer", sbO2.toString());
        methodVisitor.visitFieldInsn(181, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, 0);
        methodVisitor.visitFieldInsn(180, context.className, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class));
    }

    private void _init(com.alibaba.fastjson.asm.ClassWriter classWriter, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context) {
        int length = context.fieldInfoList.length;
        for (int i = 0; i < length; i++) {
            new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, context.fieldName(context.fieldInfoList[i]), "[C").visitEnd();
        }
        int length2 = context.fieldInfoList.length;
        for (int i2 = 0; i2 < length2; i2++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo = context.fieldInfoList[i2];
            java.lang.Class<?> cls = fieldInfo.fieldClass;
            if (!cls.isPrimitive()) {
                (java.util.Collection.class.isAssignableFrom(cls) ? new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, e.a.c.a.a.j(new java.lang.StringBuilder(), fieldInfo.name, "_asm_list_item_deser__"), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class)) : new com.alibaba.fastjson.asm.FieldWriter(classWriter, 1, context.fieldDeserName(fieldInfo), com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.deserializer.ObjectDeserializer.class))).visitEnd();
            }
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class));
        sbO.append(")V");
        com.alibaba.fastjson.asm.MethodWriter methodWriter = new com.alibaba.fastjson.asm.MethodWriter(classWriter, 1, "<init>", sbO.toString(), null, null);
        methodWriter.visitVarInsn(25, 0);
        methodWriter.visitVarInsn(25, 1);
        methodWriter.visitVarInsn(25, 2);
        java.lang.String strType = com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class);
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("(");
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParserConfig.class));
        sbO2.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.util.JavaBeanInfo.class));
        sbO2.append(")V");
        methodWriter.visitMethodInsn(183, strType, "<init>", sbO2.toString());
        int length3 = context.fieldInfoList.length;
        for (int i3 = 0; i3 < length3; i3++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = context.fieldInfoList[i3];
            methodWriter.visitVarInsn(25, 0);
            methodWriter.visitLdcInsn("\"" + fieldInfo2.name + "\":");
            methodWriter.visitMethodInsn(182, "java/lang/String", "toCharArray", "()[C");
            methodWriter.visitFieldInsn(181, context.className, context.fieldName(fieldInfo2), "[C");
        }
        methodWriter.visitInsn(177);
        methodWriter.visitMaxs(4, 4);
        methodWriter.visitEnd();
    }

    private void _isFlag(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, int i, com.alibaba.fastjson.asm.Label label) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("_asm_flag_");
        sbO.append(i / 32);
        methodVisitor.visitVarInsn(21, context.var(sbO.toString()));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(1 << i));
        methodVisitor.visitInsn(126);
        methodVisitor.visitJumpInsn(153, label);
    }

    private void _loadAndSet(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        int i;
        int iVar_asm;
        java.lang.Class<?> cls = fieldInfo.fieldClass;
        java.lang.reflect.Type type = fieldInfo.fieldType;
        if (cls == java.lang.Boolean.TYPE || cls == java.lang.Byte.TYPE || cls == java.lang.Short.TYPE || cls == java.lang.Integer.TYPE || cls == java.lang.Character.TYPE) {
            methodVisitor.visitVarInsn(25, context.var("instance"));
            methodVisitor.visitVarInsn(21, context.var_asm(fieldInfo));
        } else {
            if (cls == java.lang.Long.TYPE) {
                methodVisitor.visitVarInsn(25, context.var("instance"));
                methodVisitor.visitVarInsn(22, context.var_asm(fieldInfo, 2));
                if (fieldInfo.method == null) {
                    methodVisitor.visitFieldInsn(181, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass));
                    return;
                }
                methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(context.getInstClass()), fieldInfo.method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.method));
                if (fieldInfo.method.getReturnType().equals(java.lang.Void.TYPE)) {
                    return;
                }
                methodVisitor.visitInsn(87);
                return;
            }
            if (cls == java.lang.Float.TYPE) {
                methodVisitor.visitVarInsn(25, context.var("instance"));
                i = 23;
                iVar_asm = context.var_asm(fieldInfo);
            } else if (cls == java.lang.Double.TYPE) {
                methodVisitor.visitVarInsn(25, context.var("instance"));
                i = 24;
                iVar_asm = context.var_asm(fieldInfo, 2);
            } else {
                if (cls == java.lang.String.class || cls.isEnum() || !java.util.Collection.class.isAssignableFrom(cls)) {
                    methodVisitor.visitVarInsn(25, context.var("instance"));
                } else {
                    methodVisitor.visitVarInsn(25, context.var("instance"));
                    if (com.alibaba.fastjson.util.TypeUtils.getCollectionItemClass(type) == java.lang.String.class) {
                        methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
                        methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls));
                    }
                }
                methodVisitor.visitVarInsn(25, context.var_asm(fieldInfo));
            }
            methodVisitor.visitVarInsn(i, iVar_asm);
        }
        _set(context, methodVisitor, fieldInfo);
    }

    private void _newCollection(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, java.lang.Class<?> cls, int i, boolean z) {
        java.lang.Class cls2;
        java.lang.String strType;
        if (!cls.isAssignableFrom(java.util.ArrayList.class) || z) {
            if (!cls.isAssignableFrom(java.util.LinkedList.class) || z) {
                if (cls.isAssignableFrom(java.util.HashSet.class)) {
                    methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class));
                    methodVisitor.visitInsn(89);
                    cls2 = java.util.HashSet.class;
                } else if (cls.isAssignableFrom(java.util.TreeSet.class)) {
                    methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.TreeSet.class));
                    methodVisitor.visitInsn(89);
                    cls2 = java.util.TreeSet.class;
                } else if (cls.isAssignableFrom(java.util.LinkedHashSet.class)) {
                    methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedHashSet.class));
                    methodVisitor.visitInsn(89);
                    cls2 = java.util.LinkedHashSet.class;
                } else {
                    if (!z) {
                        methodVisitor.visitVarInsn(25, 0);
                        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i));
                        methodVisitor.visitMethodInsn(182, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), "getFieldType", "(I)Ljava/lang/reflect/Type;");
                        methodVisitor.visitMethodInsn(184, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.util.TypeUtils.class), "createCollection", "(Ljava/lang/reflect/Type;)Ljava/util/Collection;");
                    }
                    methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.HashSet.class));
                    methodVisitor.visitInsn(89);
                    cls2 = java.util.HashSet.class;
                }
                methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls));
            }
            methodVisitor.visitTypeInsn(187, com.alibaba.fastjson.util.ASMUtils.type(java.util.LinkedList.class));
            methodVisitor.visitInsn(89);
            cls2 = java.util.LinkedList.class;
            strType = com.alibaba.fastjson.util.ASMUtils.type(cls2);
        } else {
            strType = "java/util/ArrayList";
            methodVisitor.visitTypeInsn(187, "java/util/ArrayList");
            methodVisitor.visitInsn(89);
        }
        methodVisitor.visitMethodInsn(183, strType, "<init>", "()V");
        methodVisitor.visitTypeInsn(192, com.alibaba.fastjson.util.ASMUtils.type(cls));
    }

    private void _quickNextToken(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, int i) {
        int i2;
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        if (i == 12) {
            i2 = 123;
        } else {
            if (i != 14) {
                throw new java.lang.IllegalStateException();
            }
            i2 = 91;
        }
        methodVisitor.visitVarInsn(16, i2);
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label2);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(i));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "(I)V");
        methodVisitor.visitLabel(label2);
    }

    private void _quickNextTokenComma(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label2 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label3 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label4 = new com.alibaba.fastjson.asm.Label();
        com.alibaba.fastjson.asm.Label label5 = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "getCurrent", "()C");
        methodVisitor.visitInsn(89);
        methodVisitor.visitVarInsn(54, context.var("ch"));
        methodVisitor.visitVarInsn(16, 44);
        methodVisitor.visitJumpInsn(160, label2);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(16);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label2);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 125);
        methodVisitor.visitJumpInsn(160, label3);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(13);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label3);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 93);
        methodVisitor.visitJumpInsn(160, label4);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "next", "()C");
        methodVisitor.visitInsn(87);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(15);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label4);
        methodVisitor.visitVarInsn(21, context.var("ch"));
        methodVisitor.visitVarInsn(16, 26);
        methodVisitor.visitJumpInsn(160, label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitLdcInsn(20);
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "setToken", "(I)V");
        methodVisitor.visitJumpInsn(167, label5);
        methodVisitor.visitLabel(label);
        methodVisitor.visitVarInsn(25, context.var("lexer"));
        methodVisitor.visitMethodInsn(182, JSONLexerBase, "nextToken", "()V");
        methodVisitor.visitLabel(label5);
    }

    private void _set(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Method method = fieldInfo.method;
        if (method == null) {
            methodVisitor.visitFieldInsn(181, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), fieldInfo.field.getName(), com.alibaba.fastjson.util.ASMUtils.desc(fieldInfo.fieldClass));
            return;
        }
        methodVisitor.visitMethodInsn(method.getDeclaringClass().isInterface() ? 185 : 182, com.alibaba.fastjson.util.ASMUtils.type(fieldInfo.declaringClass), method.getName(), com.alibaba.fastjson.util.ASMUtils.desc(method));
        if (fieldInfo.method.getReturnType().equals(java.lang.Void.TYPE)) {
            return;
        }
        methodVisitor.visitInsn(87);
    }

    private void _setContext(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitVarInsn(25, context.var(com.umeng.analytics.pro.c.R));
        java.lang.String str = DefaultJSONParser;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("(");
        sbO.append(com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.ParseContext.class));
        sbO.append(")V");
        methodVisitor.visitMethodInsn(182, str, "setContext", sbO.toString());
        com.alibaba.fastjson.asm.Label label = new com.alibaba.fastjson.asm.Label();
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitJumpInsn(198, label);
        methodVisitor.visitVarInsn(25, context.var("childContext"));
        methodVisitor.visitVarInsn(25, context.var("instance"));
        methodVisitor.visitFieldInsn(181, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.ParseContext.class), "object", "Ljava/lang/Object;");
        methodVisitor.visitLabel(label);
    }

    private void _setFlag(com.alibaba.fastjson.asm.MethodVisitor methodVisitor, com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("_asm_flag_");
        sbO.append(i / 32);
        java.lang.String string = sbO.toString();
        methodVisitor.visitVarInsn(21, context.var(string));
        methodVisitor.visitLdcInsn(java.lang.Integer.valueOf(1 << i));
        methodVisitor.visitInsn(128);
        methodVisitor.visitVarInsn(54, context.var(string));
    }

    private void defineVarLexer(com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context context, com.alibaba.fastjson.asm.MethodVisitor methodVisitor) {
        methodVisitor.visitVarInsn(25, 1);
        methodVisitor.visitFieldInsn(180, DefaultJSONParser, "lexer", com.alibaba.fastjson.util.ASMUtils.desc((java.lang.Class<?>) com.alibaba.fastjson.parser.JSONLexer.class));
        methodVisitor.visitTypeInsn(192, JSONLexerBase);
        methodVisitor.visitVarInsn(58, context.var("lexer"));
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer createJavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo) {
        java.lang.String strF;
        java.lang.Class<?> cls = javaBeanInfo.clazz;
        if (cls.isPrimitive()) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("not support type :");
            sbO.append(cls.getName());
            throw new java.lang.IllegalArgumentException(sbO.toString());
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("FastjsonASMDeserializer_");
        sbO2.append(this.seed.incrementAndGet());
        sbO2.append("_");
        sbO2.append(cls.getSimpleName());
        java.lang.String string = sbO2.toString();
        java.lang.Package r1 = com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.class.getPackage();
        if (r1 != null) {
            java.lang.String name = r1.getName();
            java.lang.String str = name.replace('.', com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH) + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + string;
            strF = e.a.c.a.a.f(name, ".", string);
            string = str;
        } else {
            strF = string;
        }
        com.alibaba.fastjson.asm.ClassWriter classWriter = new com.alibaba.fastjson.asm.ClassWriter();
        classWriter.visit(49, 33, string, com.alibaba.fastjson.util.ASMUtils.type(com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class), null);
        _init(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(string, parserConfig, javaBeanInfo, 3));
        _createInstance(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(string, parserConfig, javaBeanInfo, 3));
        _deserialze(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(string, parserConfig, javaBeanInfo, 5));
        _deserialzeArrayMapping(classWriter, new com.alibaba.fastjson.parser.deserializer.ASMDeserializerFactory.Context(string, parserConfig, javaBeanInfo, 4));
        byte[] byteArray = classWriter.toByteArray();
        return (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) this.classLoader.defineClassPublic(strF, byteArray, 0, byteArray.length).getConstructor(com.alibaba.fastjson.parser.ParserConfig.class, com.alibaba.fastjson.util.JavaBeanInfo.class).newInstance(parserConfig, javaBeanInfo);
    }
}
