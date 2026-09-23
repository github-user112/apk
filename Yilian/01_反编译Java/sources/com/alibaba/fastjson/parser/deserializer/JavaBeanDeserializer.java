package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class JavaBeanDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public final java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> alterNameFieldDeserializers;
    public final com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandler;
    public final com.alibaba.fastjson.util.JavaBeanInfo beanInfo;
    public final java.lang.Class<?> clazz;
    public java.util.concurrent.ConcurrentMap<java.lang.String, java.lang.Object> extraFieldDeserializers;
    public java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> fieldDeserializerMap;
    public final com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializers;
    public transient long[] hashArray;
    public transient short[] hashArrayMapping;
    public transient long[] smartMatchHashArray;
    public transient short[] smartMatchHashArrayMapping;
    public final com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] sortedFieldDeserializers;

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo) throws java.lang.IllegalAccessException, java.lang.InstantiationException {
        com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler autoTypeCheckHandlerNewInstance;
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanInfo.jsonType;
        java.util.HashMap map = null;
        if (jSONType == null || jSONType.autoTypeCheckHandler() == com.alibaba.fastjson.parser.ParserConfig.AutoTypeCheckHandler.class) {
            autoTypeCheckHandlerNewInstance = null;
        } else {
            try {
                autoTypeCheckHandlerNewInstance = javaBeanInfo.jsonType.autoTypeCheckHandler().newInstance();
            } catch (java.lang.Exception unused) {
            }
        }
        this.autoTypeCheckHandler = autoTypeCheckHandlerNewInstance;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr = javaBeanInfo.sortedFields;
        this.sortedFieldDeserializers = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[fieldInfoArr.length];
        int length = fieldInfoArr.length;
        for (int i = 0; i < length; i++) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializerCreateFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = fieldDeserializerCreateFieldDeserializer;
            if (length > 128) {
                if (this.fieldDeserializerMap == null) {
                    this.fieldDeserializerMap = new java.util.HashMap();
                }
                this.fieldDeserializerMap.put(fieldInfo.name, fieldDeserializerCreateFieldDeserializer);
            }
            for (java.lang.String str : fieldInfo.alternateNames) {
                if (map == null) {
                    map = new java.util.HashMap();
                }
                map.put(str, fieldDeserializerCreateFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = map;
        com.alibaba.fastjson.util.FieldInfo[] fieldInfoArr2 = javaBeanInfo.fields;
        this.fieldDeserializers = new com.alibaba.fastjson.parser.deserializer.FieldDeserializer[fieldInfoArr2.length];
        int length2 = fieldInfoArr2.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    public JavaBeanDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls, java.lang.reflect.Type type) {
        this(parserConfig, com.alibaba.fastjson.util.JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    private java.lang.Object createFactoryInstance(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Object obj) {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    public static com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer getSeeAlso(com.alibaba.fastjson.parser.ParserConfig parserConfig, com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo, java.lang.String str) {
        com.alibaba.fastjson.annotation.JSONType jSONType = javaBeanInfo.jsonType;
        if (jSONType == null) {
            return null;
        }
        for (java.lang.Class<?> cls : jSONType.seeAlso()) {
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer;
                com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    public static boolean isSetFlag(int i, int[] iArr) {
        int i2;
        if (iArr != null && (i2 = i / 32) < iArr.length) {
            return ((1 << (i % 32)) & iArr[i2]) != 0;
        }
        return false;
    }

    public static void parseArray(java.util.Collection collection, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer, com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) throws java.lang.NumberFormatException {
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, java.lang.Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            }
            if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() != ',') {
            jSONLexerBase.nextToken(16);
        } else {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
        }
    }

    public void check(com.alibaba.fastjson.parser.JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
    }

    public java.lang.Object createInstance(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.Object objNewInstance;
        if ((type instanceof java.lang.Class) && this.clazz.isInterface()) {
            return java.lang.reflect.Proxy.newProxyInstance(java.lang.Thread.currentThread().getContextClassLoader(), new java.lang.Class[]{(java.lang.Class) type}, new com.alibaba.fastjson.JSONObject());
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo = this.beanInfo;
        java.lang.Object obj = null;
        if (javaBeanInfo.defaultConstructor == null && javaBeanInfo.factoryMethod == null) {
            return null;
        }
        com.alibaba.fastjson.util.JavaBeanInfo javaBeanInfo2 = this.beanInfo;
        if (javaBeanInfo2.factoryMethod != null && javaBeanInfo2.defaultConstructorParameterSize > 0) {
            return null;
        }
        try {
            java.lang.reflect.Constructor<?> constructor = this.beanInfo.defaultConstructor;
            if (this.beanInfo.defaultConstructorParameterSize == 0) {
                objNewInstance = constructor != null ? constructor.newInstance(new java.lang.Object[0]) : this.beanInfo.factoryMethod.invoke(null, new java.lang.Object[0]);
            } else {
                com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
                if (context == null || context.object == null) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                if (!(type instanceof java.lang.Class)) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                java.lang.String name = ((java.lang.Class) type).getName();
                java.lang.String strSubstring = name.substring(0, name.lastIndexOf(36));
                java.lang.Object obj2 = context.object;
                java.lang.String name2 = obj2.getClass().getName();
                if (!name2.equals(strSubstring)) {
                    com.alibaba.fastjson.parser.ParseContext parseContext = context.parent;
                    if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                        obj = obj2;
                    } else if (parseContext.object.getClass().getName().equals(strSubstring)) {
                        obj = parseContext.object;
                    }
                    obj2 = obj;
                }
                if (obj2 == null || ((obj2 instanceof java.util.Collection) && ((java.util.Collection) obj2).isEmpty())) {
                    throw new com.alibaba.fastjson.JSONException("can't create non-static inner class instance.");
                }
                objNewInstance = constructor.newInstance(obj2);
            }
            if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty)) {
                for (com.alibaba.fastjson.util.FieldInfo fieldInfo : this.beanInfo.fields) {
                    if (fieldInfo.fieldClass == java.lang.String.class) {
                        try {
                            fieldInfo.set(objNewInstance, "");
                        } catch (java.lang.Exception e2) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("create instance error, class ");
                            sbO.append(this.clazz.getName());
                            throw new com.alibaba.fastjson.JSONException(sbO.toString(), e2);
                        }
                    }
                }
            }
            return objNewInstance;
        } catch (com.alibaba.fastjson.JSONException e3) {
            throw e3;
        } catch (java.lang.Exception e4) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("create instance error, class ");
            sbO2.append(this.clazz.getName());
            throw new com.alibaba.fastjson.JSONException(sbO2.toString(), e4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> r13, com.alibaba.fastjson.parser.ParserConfig r14) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.createInstance(java.util.Map, com.alibaba.fastjson.parser.ParserConfig):java.lang.Object");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type update terminated with stack overflow, arg: (r1v5 ??), method size: 2638
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r38, java.lang.reflect.Type r39, java.lang.Object r40, java.lang.Object r41, int r42, int[] r43) {
        /*
            Method dump skipped, instructions count: 2638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    public <T> T deserialzeArrayMapping(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2) {
        java.lang.Object objScanDecimal;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new com.alibaba.fastjson.JSONException(com.umeng.analytics.pro.c.O);
        }
        java.lang.String strScanTypeName = jSONLexer.scanTypeName(defaultJSONParser.symbolTable);
        if (strScanTypeName != null) {
            com.alibaba.fastjson.parser.deserializer.ObjectDeserializer seeAlso = getSeeAlso(defaultJSONParser.getConfig(), this.beanInfo, strScanTypeName);
            if (seeAlso == null) {
                seeAlso = defaultJSONParser.getConfig().getDeserializer(defaultJSONParser.getConfig().checkAutoType(strScanTypeName, com.alibaba.fastjson.util.TypeUtils.getClass(type), jSONLexer.getFeatures()));
            }
            if (seeAlso instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) {
                return (T) ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) seeAlso).deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
            }
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int i = 0;
        int length = this.sortedFieldDeserializers.length;
        while (true) {
            if (i >= length) {
                break;
            }
            char c2 = i == length + (-1) ? ']' : ',';
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            java.lang.Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == java.lang.Integer.TYPE) {
                fieldDeserializer.setValue((java.lang.Object) t, jSONLexer.scanInt(c2));
            } else if (cls == java.lang.String.class) {
                fieldDeserializer.setValue((java.lang.Object) t, jSONLexer.scanString(c2));
            } else if (cls == java.lang.Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c2));
            } else {
                if (cls.isEnum()) {
                    char current = jSONLexer.getCurrent();
                    objScanDecimal = (current == '\"' || current == 'n') ? jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c2) : (current < '0' || current > '9') ? scanEnum(jSONLexer, c2) : ((com.alibaba.fastjson.parser.deserializer.EnumDeserializer) ((com.alibaba.fastjson.parser.deserializer.DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c2));
                } else if (cls == java.lang.Boolean.TYPE) {
                    fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c2));
                } else if (cls == java.lang.Float.TYPE) {
                    objScanDecimal = java.lang.Float.valueOf(jSONLexer.scanFloat(c2));
                } else if (cls == java.lang.Double.TYPE) {
                    objScanDecimal = java.lang.Double.valueOf(jSONLexer.scanDouble(c2));
                } else if (cls == java.util.Date.class && jSONLexer.getCurrent() == '1') {
                    objScanDecimal = new java.util.Date(jSONLexer.scanLong(c2));
                } else if (cls == java.math.BigDecimal.class) {
                    objScanDecimal = jSONLexer.scanDecimal(c2);
                } else {
                    jSONLexer.nextToken(14);
                    com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                    fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldInfo.fieldType, fieldInfo.name));
                    if (jSONLexer.token() == 15) {
                        break;
                    }
                    check(jSONLexer, c2 == ']' ? 15 : 16);
                }
                fieldDeserializer.setValue(t, objScanDecimal);
            }
            i++;
        }
        jSONLexer.nextToken(16);
        return t;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = com.alibaba.fastjson.util.TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            java.util.Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int iBinarySearch = java.util.Arrays.binarySearch(this.hashArray, j);
        if (iBinarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            java.util.Arrays.fill(sArr, (short) -1);
            while (true) {
                com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int iBinarySearch2 = java.util.Arrays.binarySearch(this.hashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (iBinarySearch2 >= 0) {
                    sArr[iBinarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[iBinarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(java.lang.String str) {
        return getFieldDeserializer(str, null);
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer getFieldDeserializer(java.lang.String str, int[] iArr) {
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer;
        if (str == null) {
            return null;
        }
        java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> map = this.fieldDeserializerMap;
        if (map != null && (fieldDeserializer = map.get(str)) != null) {
            return fieldDeserializer;
        }
        int i = 0;
        int length = this.sortedFieldDeserializers.length - 1;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int iCompareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
            if (iCompareTo < 0) {
                i = i2 + 1;
            } else {
                if (iCompareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                }
                length = i2 - 1;
            }
        }
        java.util.Map<java.lang.String, com.alibaba.fastjson.parser.deserializer.FieldDeserializer> map2 = this.alterNameFieldDeserializers;
        if (map2 != null) {
            return map2.get(str);
        }
        return null;
    }

    public java.lang.reflect.Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.String str, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0120  */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [boolean, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser r22, java.lang.String r23, java.lang.Object r24, java.lang.reflect.Type r25, java.util.Map<java.lang.String, java.lang.Object> r26, int[] r27) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.parseField(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.String, java.lang.Object, java.lang.reflect.Type, java.util.Map, int[]):boolean");
    }

    public java.lang.Object parseRest(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    public java.lang.Object parseRest(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    public java.lang.Enum<?> scanEnum(com.alibaba.fastjson.parser.JSONLexer jSONLexer, char c2) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal enum. ");
        sbO.append(jSONLexer.info());
        throw new com.alibaba.fastjson.JSONException(sbO.toString());
    }

    public java.lang.Enum scanEnum(com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase, char[] cArr, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer) {
        com.alibaba.fastjson.parser.deserializer.EnumDeserializer enumDeserializer = objectDeserializer instanceof com.alibaba.fastjson.parser.deserializer.EnumDeserializer ? (com.alibaba.fastjson.parser.deserializer.EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long jScanEnumSymbol = jSONLexerBase.scanEnumSymbol(cArr);
        if (jSONLexerBase.matchStat <= 0) {
            return null;
        }
        java.lang.Enum enumByHashCode = enumDeserializer.getEnumByHashCode(jScanEnumSymbol);
        if (enumByHashCode == null) {
            if (jScanEnumSymbol == com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode) {
                return null;
            }
            if (jSONLexerBase.isEnabled(com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("not match enum value, ");
                sbO.append(enumDeserializer.enumClass);
                throw new com.alibaba.fastjson.JSONException(sbO.toString());
            }
        }
        return enumByHashCode;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer smartMatch(java.lang.String str) {
        return smartMatch(str, null);
    }

    public com.alibaba.fastjson.parser.deserializer.FieldDeserializer smartMatch(java.lang.String str, int[] iArr) {
        boolean zStartsWith;
        if (str == null) {
            return null;
        }
        com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            int i = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i2 = 0;
                while (true) {
                    com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i2 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i2] = fieldDeserializerArr[i2].fieldInfo.nameHashCode;
                    i2++;
                }
                java.util.Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_lower(str));
            if (iBinarySearch < 0) {
                iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str));
            }
            if (iBinarySearch < 0) {
                zStartsWith = str.startsWith(com.umeng.analytics.pro.ai.ae);
                if (zStartsWith) {
                    iBinarySearch = java.util.Arrays.binarySearch(this.smartMatchHashArray, com.alibaba.fastjson.util.TypeUtils.fnv1a_64_extract(str.substring(2)));
                }
            } else {
                zStartsWith = false;
            }
            if (iBinarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    java.util.Arrays.fill(sArr, (short) -1);
                    while (true) {
                        com.alibaba.fastjson.parser.deserializer.FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int iBinarySearch2 = java.util.Arrays.binarySearch(this.smartMatchHashArray, fieldDeserializerArr2[i].fieldInfo.nameHashCode);
                        if (iBinarySearch2 >= 0) {
                            sArr[iBinarySearch2] = (short) i;
                        }
                        i++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s = this.smartMatchHashArrayMapping[iBinarySearch];
                if (s != -1 && !isSetFlag(s, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s];
                }
            }
            if (fieldDeserializer != null) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & com.alibaba.fastjson.parser.Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                java.lang.Class<?> cls = fieldInfo.fieldClass;
                if (zStartsWith && cls != java.lang.Boolean.TYPE && cls != java.lang.Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }
}
