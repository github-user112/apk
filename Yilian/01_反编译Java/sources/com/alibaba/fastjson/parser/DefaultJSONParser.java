package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public class DefaultJSONParser implements java.io.Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    public static final java.util.Set<java.lang.Class<?>> primitiveClasses = new java.util.HashSet();
    public java.lang.String[] autoTypeAccept;
    public boolean autoTypeEnable;
    public com.alibaba.fastjson.parser.ParserConfig config;
    public com.alibaba.fastjson.parser.ParseContext context;
    public com.alibaba.fastjson.parser.ParseContext[] contextArray;
    public int contextArrayIndex;
    public java.text.DateFormat dateFormat;
    public java.lang.String dateFormatPattern;
    public java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraProcessor> extraProcessors;
    public java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider> extraTypeProviders;
    public com.alibaba.fastjson.parser.deserializer.FieldTypeResolver fieldTypeResolver;
    public final java.lang.Object input;
    public transient com.alibaba.fastjson.serializer.BeanContext lastBeanContext;
    public final com.alibaba.fastjson.parser.JSONLexer lexer;
    public int objectKeyLevel;
    public int resolveStatus;
    public java.util.List<com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask> resolveTaskList;
    public final com.alibaba.fastjson.parser.SymbolTable symbolTable;

    public static class ResolveTask {
        public final com.alibaba.fastjson.parser.ParseContext context;
        public com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer;
        public com.alibaba.fastjson.parser.ParseContext ownerContext;
        public final java.lang.String referenceValue;

        public ResolveTask(com.alibaba.fastjson.parser.ParseContext parseContext, java.lang.String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        primitiveClasses.addAll(java.util.Arrays.asList(java.lang.Boolean.TYPE, java.lang.Byte.TYPE, java.lang.Short.TYPE, java.lang.Integer.TYPE, java.lang.Long.TYPE, java.lang.Float.TYPE, java.lang.Double.TYPE, java.lang.Boolean.class, java.lang.Byte.class, java.lang.Short.class, java.lang.Integer.class, java.lang.Long.class, java.lang.Float.class, java.lang.Double.class, java.math.BigInteger.class, java.math.BigDecimal.class, java.lang.String.class));
    }

    public DefaultJSONParser(com.alibaba.fastjson.parser.JSONLexer jSONLexer) {
        this(jSONLexer, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public DefaultJSONParser(com.alibaba.fastjson.parser.JSONLexer jSONLexer, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this((java.lang.Object) null, jSONLexer, parserConfig);
    }

    public DefaultJSONParser(java.lang.Object obj, com.alibaba.fastjson.parser.JSONLexer jSONLexer, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        int i;
        this.dateFormatPattern = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) jSONLexer;
            i = 12;
        } else if (current != '[') {
            jSONLexer.nextToken();
            return;
        } else {
            jSONLexer.next();
            jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) jSONLexer;
            i = 14;
        }
        jSONLexerBase.token = i;
    }

    public DefaultJSONParser(java.lang.String str) {
        this(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance(), com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this(str, new com.alibaba.fastjson.parser.JSONScanner(str, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public DefaultJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i) {
        this(str, new com.alibaba.fastjson.parser.JSONScanner(str, i), parserConfig);
    }

    public DefaultJSONParser(char[] cArr, int i, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i2) {
        this(cArr, new com.alibaba.fastjson.parser.JSONScanner(cArr, i, i2), parserConfig);
    }

    private void addContext(com.alibaba.fastjson.parser.ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        com.alibaba.fastjson.parser.ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new com.alibaba.fastjson.parser.ParseContext[8];
        } else if (i >= parseContextArr.length) {
            com.alibaba.fastjson.parser.ParseContext[] parseContextArr2 = new com.alibaba.fastjson.parser.ParseContext[(parseContextArr.length * 3) / 2];
            java.lang.System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error, expect ");
        sbO.append(com.alibaba.fastjson.parser.JSONToken.name(i));
        sbO.append(", actual ");
        sbO.append(com.alibaba.fastjson.parser.JSONToken.name(jSONLexer.token()));
        throw new com.alibaba.fastjson.JSONException(sbO.toString());
    }

    public final void accept(int i, int i2) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public void acceptType(java.lang.String str) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new com.alibaba.fastjson.JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new com.alibaba.fastjson.JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new java.util.ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(java.util.Collection collection) {
        if (this.resolveStatus == 1) {
            if (collection instanceof java.util.List) {
                int size = collection.size() - 1;
                com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer(this, (java.util.List) collection, size);
                lastResolveTask.ownerContext = this.context;
            } else {
                com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask lastResolveTask2 = getLastResolveTask();
                lastResolveTask2.fieldDeserializer = new com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer(collection);
                lastResolveTask2.ownerContext = this.context;
            }
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(java.util.Map map, java.lang.Object obj) {
        if (this.resolveStatus == 1) {
            com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer resolveFieldDeserializer = new com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer(map, obj);
            com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new com.alibaba.fastjson.JSONException("not close json text, token : " + com.alibaba.fastjson.parser.JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public void config(com.alibaba.fastjson.parser.Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public com.alibaba.fastjson.parser.ParserConfig getConfig() {
        return this.config;
    }

    public com.alibaba.fastjson.parser.ParseContext getContext() {
        return this.context;
    }

    public java.lang.String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public java.text.DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new java.util.ArrayList(2);
        }
        return this.extraProcessors;
    }

    public java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new java.util.ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public com.alibaba.fastjson.parser.deserializer.FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public java.lang.String getInput() {
        java.lang.Object obj = this.input;
        return obj instanceof char[] ? new java.lang.String((char[]) this.input) : obj.toString();
    }

    public com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask getLastResolveTask() {
        return this.resolveTaskList.get(r0.size() - 1);
    }

    public com.alibaba.fastjson.parser.JSONLexer getLexer() {
        return this.lexer;
    }

    public java.lang.Object getObject(java.lang.String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public com.alibaba.fastjson.parser.ParseContext getOwnerContext() {
        return this.context.parent;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public java.util.List<com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new java.util.ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public com.alibaba.fastjson.parser.SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(java.lang.Object obj) {
        java.lang.Object objEval;
        com.alibaba.fastjson.parser.ParseContext parseContext;
        com.alibaba.fastjson.util.FieldInfo fieldInfo;
        java.util.List<com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask resolveTask = this.resolveTaskList.get(i);
            java.lang.String str = resolveTask.referenceValue;
            com.alibaba.fastjson.parser.ParseContext parseContext2 = resolveTask.ownerContext;
            java.lang.Object obj2 = parseContext2 != null ? parseContext2.object : null;
            if (str.startsWith("$")) {
                objEval = getObject(str);
                if (objEval == null) {
                    try {
                        com.alibaba.fastjson.JSONPath jSONPath = new com.alibaba.fastjson.JSONPath(str, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance(), this.config, true);
                        if (jSONPath.isRef()) {
                            objEval = jSONPath.eval(obj);
                        }
                    } catch (com.alibaba.fastjson.JSONPathException unused) {
                    }
                }
            } else {
                objEval = resolveTask.context.object;
            }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (objEval != null && objEval.getClass() == com.alibaba.fastjson.JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !java.util.Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    java.lang.Object obj3 = this.contextArray[0].object;
                    com.alibaba.fastjson.JSONPath jSONPathCompile = com.alibaba.fastjson.JSONPath.compile(str);
                    if (jSONPathCompile.isRef()) {
                        objEval = jSONPathCompile.eval(obj3);
                    }
                }
                if (fieldDeserializer.getOwnerClass() != null && !fieldDeserializer.getOwnerClass().isInstance(obj2) && (parseContext = resolveTask.ownerContext.parent) != null) {
                    while (true) {
                        if (parseContext == null) {
                            break;
                        }
                        if (fieldDeserializer.getOwnerClass().isInstance(parseContext.object)) {
                            obj2 = parseContext.object;
                            break;
                        }
                        parseContext = parseContext.parent;
                    }
                }
                fieldDeserializer.setValue(obj2, objEval);
            }
        }
    }

    public boolean isEnabled(com.alibaba.fastjson.parser.Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public java.lang.Object parse() {
        return parse(null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x020d, code lost:
    
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }

    public java.lang.Object parse(java.lang.Object obj) {
        java.util.Collection hashSet;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            java.lang.Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i == 3) {
            java.lang.Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat)) {
                com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i == 12) {
            return parseObject(isEnabled(com.alibaba.fastjson.parser.Feature.UseNativeJavaObject) ? jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.OrderedField) ? new java.util.HashMap() : new java.util.LinkedHashMap() : new com.alibaba.fastjson.JSONObject(jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.OrderedField)), obj);
        }
        if (i == 14) {
            java.util.Collection arrayList = isEnabled(com.alibaba.fastjson.parser.Feature.UseNativeJavaObject) ? new java.util.ArrayList() : new com.alibaba.fastjson.JSONArray();
            parseArray(arrayList, obj);
            return jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.UseObjectArray) ? arrayList.toArray() : arrayList;
        }
        if (i == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error, ");
            sbO.append(jSONLexer.info());
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        if (i == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i) {
            case 6:
                jSONLexer.nextToken();
                return java.lang.Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return java.lang.Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new java.util.Date(jLongValue);
            default:
                switch (i) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("unterminated json string, ");
                        sbO2.append(jSONLexer.info());
                        throw new com.alibaba.fastjson.JSONException(sbO2.toString());
                    case 21:
                        jSONLexer.nextToken();
                        hashSet = new java.util.HashSet();
                        break;
                    case 22:
                        jSONLexer.nextToken();
                        hashSet = new java.util.TreeSet();
                        break;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("syntax error, ");
                        sbO3.append(jSONLexer.info());
                        throw new com.alibaba.fastjson.JSONException(sbO3.toString());
                }
                parseArray(hashSet, obj);
                return hashSet;
        }
    }

    public <T> java.util.List<T> parseArray(java.lang.Class<T> cls) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        parseArray((java.lang.Class<?>) cls, (java.util.Collection) arrayList);
        return arrayList;
    }

    public void parseArray(java.lang.Class<?> cls, java.util.Collection collection) {
        parseArray((java.lang.reflect.Type) cls, collection);
    }

    public void parseArray(java.lang.reflect.Type type, java.util.Collection collection) {
        parseArray(type, collection, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0056 A[Catch: all -> 0x00de, LOOP:1: B:19:0x0056->B:21:0x005e, LOOP_START, TryCatch #0 {all -> 0x00de, blocks: (B:17:0x004a, B:19:0x0056, B:21:0x005e, B:22:0x0064, B:27:0x0077, B:29:0x007c, B:44:0x00c9, B:46:0x00d1, B:31:0x0088, B:33:0x0090, B:38:0x00a7, B:34:0x009c, B:37:0x00a3, B:39:0x00ab, B:41:0x00b5, B:43:0x00c3, B:42:0x00bb), top: B:54:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077 A[Catch: all -> 0x00de, TRY_ENTER, TryCatch #0 {all -> 0x00de, blocks: (B:17:0x004a, B:19:0x0056, B:21:0x005e, B:22:0x0064, B:27:0x0077, B:29:0x007c, B:44:0x00c9, B:46:0x00d1, B:31:0x0088, B:33:0x0090, B:38:0x00a7, B:34:0x009c, B:37:0x00a3, B:39:0x00ab, B:41:0x00b5, B:43:0x00c3, B:42:0x00bb), top: B:54:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x006e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void parseArray(java.lang.reflect.Type r9, java.util.Collection r10, java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseArray(java.lang.reflect.Type, java.util.Collection, java.lang.Object):void");
    }

    public final void parseArray(java.util.Collection collection) {
        parseArray(collection, (java.lang.Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x00bb A[Catch: all -> 0x011a, ClassCastException -> 0x011c, TryCatch #0 {ClassCastException -> 0x011c, blocks: (B:17:0x003b, B:19:0x0045, B:21:0x004b, B:22:0x004f, B:42:0x0078, B:67:0x0107, B:69:0x0113, B:43:0x007e, B:46:0x0085, B:48:0x0099, B:49:0x009f, B:50:0x00a6, B:51:0x00a7, B:52:0x00bb, B:53:0x00bf, B:66:0x0103, B:54:0x00c2, B:55:0x00c5, B:57:0x00d4, B:59:0x00df, B:60:0x00e8, B:61:0x00ec, B:63:0x00f4, B:64:0x00fa, B:65:0x00ff), top: B:81:0x003b, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0113 A[Catch: all -> 0x011a, ClassCastException -> 0x011c, TRY_LEAVE, TryCatch #0 {ClassCastException -> 0x011c, blocks: (B:17:0x003b, B:19:0x0045, B:21:0x004b, B:22:0x004f, B:42:0x0078, B:67:0x0107, B:69:0x0113, B:43:0x007e, B:46:0x0085, B:48:0x0099, B:49:0x009f, B:50:0x00a6, B:51:0x00a7, B:52:0x00bb, B:53:0x00bf, B:66:0x0103, B:54:0x00c2, B:55:0x00c5, B:57:0x00d4, B:59:0x00df, B:60:0x00e8, B:61:0x00ec, B:63:0x00f4, B:64:0x00fa, B:65:0x00ff), top: B:81:0x003b, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0116 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void parseArray(java.util.Collection r10, java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseArray(java.util.Collection, java.lang.Object):void");
    }

    public java.lang.Object[] parseArray(java.lang.reflect.Type[] typeArr) {
        java.lang.Object objValueOf;
        java.lang.Object obj;
        boolean zIsArray;
        java.lang.Class<?> componentType;
        java.lang.Class cls;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() != 14) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error : ");
            sbO.append(this.lexer.tokenName());
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        java.lang.Object[] objArr = new java.lang.Object[typeArr.length];
        if (typeArr.length == 0) {
            this.lexer.nextToken(15);
            if (this.lexer.token() != 15) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            this.lexer.nextToken(16);
            return new java.lang.Object[0];
        }
        this.lexer.nextToken(2);
        int i3 = 0;
        while (i3 < typeArr.length) {
            if (this.lexer.token() == i) {
                this.lexer.nextToken(16);
                objValueOf = null;
            } else {
                java.lang.reflect.Type type = typeArr[i3];
                if (type == java.lang.Integer.TYPE || type == java.lang.Integer.class) {
                    if (this.lexer.token() == 2) {
                        objValueOf = java.lang.Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    }
                    obj = parse();
                    objValueOf = com.alibaba.fastjson.util.TypeUtils.cast(obj, type, this.config);
                } else if (type == java.lang.String.class) {
                    if (this.lexer.token() == 4) {
                        objValueOf = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                    }
                    obj = parse();
                    objValueOf = com.alibaba.fastjson.util.TypeUtils.cast(obj, type, this.config);
                } else {
                    if (i3 == typeArr.length - 1 && (type instanceof java.lang.Class) && (((cls = (java.lang.Class) type) != byte[].class && cls != char[].class) || this.lexer.token() != 4)) {
                        zIsArray = cls.isArray();
                        componentType = cls.getComponentType();
                    } else {
                        zIsArray = false;
                        componentType = null;
                    }
                    if (!zIsArray || this.lexer.token() == i2) {
                        objValueOf = this.config.getDeserializer(type).deserialze(this, type, java.lang.Integer.valueOf(i3));
                    } else {
                        java.util.ArrayList arrayList = new java.util.ArrayList();
                        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                        int fastMatchToken = deserializer.getFastMatchToken();
                        obj = arrayList;
                        if (this.lexer.token() != 15) {
                            while (true) {
                                arrayList.add(deserializer.deserialze(this, type, null));
                                if (this.lexer.token() != 16) {
                                    break;
                                }
                                this.lexer.nextToken(fastMatchToken);
                            }
                            obj = arrayList;
                            if (this.lexer.token() != 15) {
                                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("syntax error :");
                                sbO2.append(com.alibaba.fastjson.parser.JSONToken.name(this.lexer.token()));
                                throw new com.alibaba.fastjson.JSONException(sbO2.toString());
                            }
                        }
                        objValueOf = com.alibaba.fastjson.util.TypeUtils.cast(obj, type, this.config);
                    }
                }
            }
            objArr[i3] = objValueOf;
            if (this.lexer.token() == 15) {
                break;
            }
            if (this.lexer.token() != 16) {
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("syntax error :");
                sbO3.append(com.alibaba.fastjson.parser.JSONToken.name(this.lexer.token()));
                throw new com.alibaba.fastjson.JSONException(sbO3.toString());
            }
            if (i3 == typeArr.length - 1) {
                this.lexer.nextToken(15);
            } else {
                this.lexer.nextToken(2);
            }
            i3++;
            i = 8;
            i2 = 14;
        }
        if (this.lexer.token() != 15) {
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        this.lexer.nextToken(16);
        return objArr;
    }

    public java.lang.Object parseArrayWithType(java.lang.reflect.Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        java.lang.reflect.Type[] actualTypeArguments = ((java.lang.reflect.ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new com.alibaba.fastjson.JSONException("not support type " + type);
        }
        java.lang.reflect.Type type2 = actualTypeArguments[0];
        if (type2 instanceof java.lang.Class) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            parseArray((java.lang.Class<?>) type2, (java.util.Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof java.lang.reflect.WildcardType) {
            java.lang.reflect.WildcardType wildcardType = (java.lang.reflect.WildcardType) type2;
            java.lang.reflect.Type type3 = wildcardType.getUpperBounds()[0];
            if (!java.lang.Object.class.equals(type3)) {
                java.util.ArrayList arrayList2 = new java.util.ArrayList();
                parseArray((java.lang.Class<?>) type3, (java.util.Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new com.alibaba.fastjson.JSONException("not support type : " + type);
        }
        if (type2 instanceof java.lang.reflect.TypeVariable) {
            java.lang.reflect.TypeVariable typeVariable = (java.lang.reflect.TypeVariable) type2;
            java.lang.reflect.Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new com.alibaba.fastjson.JSONException("not support : " + typeVariable);
            }
            java.lang.reflect.Type type4 = bounds[0];
            if (type4 instanceof java.lang.Class) {
                java.util.ArrayList arrayList3 = new java.util.ArrayList();
                parseArray((java.lang.Class<?>) type4, (java.util.Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof java.lang.reflect.ParameterizedType) {
            java.util.ArrayList arrayList4 = new java.util.ArrayList();
            parseArray((java.lang.reflect.ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new com.alibaba.fastjson.JSONException("TODO : " + type);
    }

    public void parseExtra(java.lang.Object obj, java.lang.String str) {
        this.lexer.nextTokenWithColon();
        java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider> list = this.extraTypeProviders;
        java.lang.reflect.Type extraType = null;
        if (list != null) {
            java.util.Iterator<com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        java.lang.Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof com.alibaba.fastjson.parser.deserializer.ExtraProcessable) {
            ((com.alibaba.fastjson.parser.deserializer.ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        java.util.List<com.alibaba.fastjson.parser.deserializer.ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            java.util.Iterator<com.alibaba.fastjson.parser.deserializer.ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public java.lang.Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        java.lang.String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    public com.alibaba.fastjson.JSONObject parseObject() {
        java.lang.Object object = parseObject((java.util.Map) new com.alibaba.fastjson.JSONObject(this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.OrderedField)));
        if (object instanceof com.alibaba.fastjson.JSONObject) {
            return (com.alibaba.fastjson.JSONObject) object;
        }
        if (object == null) {
            return null;
        }
        return new com.alibaba.fastjson.JSONObject((java.util.Map<java.lang.String, java.lang.Object>) object);
    }

    public <T> T parseObject(java.lang.Class<T> cls) {
        return (T) parseObject(cls, (java.lang.Object) null);
    }

    public <T> T parseObject(java.lang.reflect.Type type) {
        return (T) parseObject(type, (java.lang.Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(java.lang.reflect.Type type, java.lang.Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return (T) com.alibaba.fastjson.util.TypeUtils.optionalEmpty(type);
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                java.lang.String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() != com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) {
                return (T) deserializer.deserialze(this, type, obj);
            }
            if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                throw new com.alibaba.fastjson.JSONException("syntax error,expect start with { or [,but actually start with " + this.lexer.tokenName());
            }
            return (T) ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
        } catch (com.alibaba.fastjson.JSONException e2) {
            throw e2;
        } catch (java.lang.Throwable th) {
            throw new com.alibaba.fastjson.JSONException(th.getMessage(), th);
        }
    }

    public java.lang.Object parseObject(java.util.Map map) {
        return parseObject(map, (java.lang.Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0291, code lost:
    
        r1.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x029c, code lost:
    
        if (r1.token() != 13) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x029e, code lost:
    
        r1.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02a9, code lost:
    
        if ((r13.config.getDeserializer(r7) instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x02ab, code lost:
    
        r8 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r14, (java.lang.Class<java.lang.Object>) r7, r13.config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02b1, code lost:
    
        if (r8 != null) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x02b5, code lost:
    
        if (r7 != java.lang.Cloneable.class) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02b7, code lost:
    
        r8 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02c3, code lost:
    
        if ("java.util.Collections$EmptyMap".equals(r6) == false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x02c5, code lost:
    
        r8 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02d0, code lost:
    
        if ("java.util.Collections$UnmodifiableMap".equals(r6) == false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02d2, code lost:
    
        r8 = java.util.Collections.unmodifiableMap(new java.util.HashMap());
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02dc, code lost:
    
        r8 = r7.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02e3, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02e4, code lost:
    
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02ec, code lost:
    
        throw new com.alibaba.fastjson.JSONException("create instance error", r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02ed, code lost:
    
        setResolveStatus(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02f3, code lost:
    
        if (r13.context == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02f5, code lost:
    
        if (r15 == null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02f9, code lost:
    
        if ((r15 instanceof java.lang.Integer) != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0301, code lost:
    
        if ((r13.context.fieldName instanceof java.lang.Integer) != false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0303, code lost:
    
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x030a, code lost:
    
        if (r14.size() <= 0) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x030c, code lost:
    
        r14 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r14, (java.lang.Class<java.lang.Object>) r7, r13.config);
        setResolveStatus(0);
        parseObject(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x031c, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x031d, code lost:
    
        r14 = r13.config.getDeserializer(r7);
        r0 = r14.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x032d, code lost:
    
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r0) == false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0331, code lost:
    
        if (r0 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0335, code lost:
    
        if (r0 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0337, code lost:
    
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x033e, code lost:
    
        if ((r14 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0348, code lost:
    
        return r14.deserialze(r13, r7, r15);
     */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0208 A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x028a A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0442 A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04c6 A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:342:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:344:0x05c3 A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x05cf A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x05db A[Catch: all -> 0x0677, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:358:0x05f0 A[Catch: all -> 0x0677, TRY_ENTER, TryCatch #1 {all -> 0x0677, blocks: (B:24:0x0068, B:26:0x006c, B:29:0x0076, B:32:0x0089, B:36:0x00a1, B:112:0x0208, B:113:0x020e, B:115:0x0219, B:117:0x0221, B:121:0x0235, B:123:0x0243, B:145:0x028a, B:146:0x0291, B:148:0x029e, B:149:0x02a1, B:151:0x02ab, B:155:0x02b7, B:156:0x02bd, B:158:0x02c5, B:159:0x02ca, B:161:0x02d2, B:162:0x02dc, B:166:0x02e5, B:167:0x02ec, B:168:0x02ed, B:171:0x02f7, B:173:0x02fb, B:175:0x0303, B:176:0x0306, B:178:0x030c, B:181:0x031d, B:187:0x0337, B:191:0x0341, B:188:0x033c, B:124:0x0248, B:127:0x0253, B:132:0x0260, B:134:0x0266, B:139:0x0273, B:142:0x0279, B:198:0x0351, B:200:0x0357, B:202:0x035f, B:204:0x0369, B:206:0x037a, B:207:0x037f, B:209:0x0387, B:211:0x038b, B:213:0x0393, B:216:0x0398, B:218:0x039c, B:219:0x039e, B:243:0x03f5, B:245:0x03fd, B:248:0x0406, B:249:0x0420, B:220:0x03a1, B:222:0x03a9, B:224:0x03ad, B:225:0x03b0, B:226:0x03b5, B:240:0x03e7, B:227:0x03b9, B:230:0x03c2, B:232:0x03c6, B:233:0x03c9, B:236:0x03ce, B:237:0x03d7, B:239:0x03e1, B:242:0x03ec, B:250:0x0421, B:251:0x043f, B:253:0x0442, B:255:0x0446, B:257:0x044c, B:259:0x0452, B:260:0x0455, B:264:0x045d, B:270:0x046d, B:272:0x047c, B:274:0x0487, B:275:0x048f, B:286:0x04b8, B:288:0x04c6, B:291:0x04cf, B:294:0x04df, B:295:0x04ff, B:282:0x049f, B:284:0x04a9, B:285:0x04ae, B:298:0x0504, B:300:0x050e, B:302:0x0513, B:303:0x0516, B:305:0x0521, B:306:0x0525, B:308:0x0530, B:311:0x0537, B:314:0x0541, B:315:0x0546, B:318:0x054b, B:320:0x0550, B:324:0x055b, B:326:0x0563, B:328:0x0578, B:332:0x0597, B:334:0x059f, B:337:0x05a5, B:339:0x05ab, B:341:0x05b3, B:344:0x05c3, B:347:0x05cb, B:349:0x05cf, B:350:0x05d6, B:352:0x05db, B:353:0x05de, B:355:0x05e6, B:358:0x05f0, B:361:0x05fa, B:362:0x05ff, B:363:0x0604, B:364:0x061e, B:329:0x0583, B:330:0x058a, B:365:0x061f, B:367:0x0631, B:370:0x0638, B:373:0x0642, B:374:0x0662, B:39:0x00b2, B:40:0x00d0, B:43:0x00d5, B:45:0x00e0, B:47:0x00e4, B:49:0x00ea, B:51:0x00f0, B:52:0x00f3, B:59:0x0102, B:61:0x010a, B:64:0x011b, B:65:0x0133, B:66:0x0134, B:67:0x0139, B:78:0x014e, B:79:0x0154, B:81:0x015b, B:83:0x0164, B:87:0x0172, B:90:0x0179, B:91:0x0191, B:86:0x016e, B:82:0x0160, B:92:0x0192, B:93:0x01aa, B:99:0x01b4, B:101:0x01bc, B:104:0x01cd, B:105:0x01ed, B:106:0x01ee, B:107:0x01f3, B:108:0x01f4, B:110:0x01fe, B:375:0x0663, B:376:0x066a, B:377:0x066b, B:378:0x0670, B:379:0x0671, B:380:0x0676), top: B:387:0x0068, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0291 A[EDGE_INSN: B:402:0x0291->B:146:0x0291 BREAK  A[LOOP:0: B:29:0x0076->B:429:0x0076], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x04cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x046d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x05e6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object parseObject(java.util.Map r14, java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 1662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public void parseObject(java.lang.Object obj) {
        java.lang.Object objDeserialze;
        java.lang.Class<?> cls = obj.getClass();
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer ? (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error, expect {, actual ");
            sbO.append(this.lexer.tokenName());
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        while (true) {
            java.lang.String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas)) {
                }
            }
            com.alibaba.fastjson.parser.deserializer.FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer != null) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                java.lang.Class<?> cls2 = fieldInfo.fieldClass;
                java.lang.reflect.Type type = fieldInfo.fieldType;
                if (cls2 == java.lang.Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = com.alibaba.fastjson.serializer.IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == java.lang.String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = com.alibaba.fastjson.serializer.StringCodec.deserialze(this);
                } else if (cls2 == java.lang.Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = com.alibaba.fastjson.serializer.LongCodec.instance.deserialze(this, type, null);
                } else {
                    com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            } else {
                if (!this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.IgnoreNotMatch)) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("setter not found, class ");
                    sbO2.append(cls.getName());
                    sbO2.append(", property ");
                    sbO2.append(strScanSymbol);
                    throw new com.alibaba.fastjson.JSONException(sbO2.toString());
                }
                this.lexer.nextTokenWithColon();
                parse();
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken();
                    return;
                }
            }
        }
    }

    public void popContext() {
        if (this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0022, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object resolveReference(java.lang.String r5) {
        /*
            r4 = this;
            com.alibaba.fastjson.parser.ParseContext[] r0 = r4.contextArray
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            r0 = 0
        L7:
            com.alibaba.fastjson.parser.ParseContext[] r2 = r4.contextArray
            int r3 = r2.length
            if (r0 >= r3) goto L22
            int r3 = r4.contextArrayIndex
            if (r0 >= r3) goto L22
            r2 = r2[r0]
            java.lang.String r3 = r2.toString()
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L1f
            java.lang.Object r5 = r2.object
            return r5
        L1f:
            int r0 = r0 + 1
            goto L7
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.resolveReference(java.lang.String):java.lang.Object");
    }

    public void setConfig(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public com.alibaba.fastjson.parser.ParseContext setContext(com.alibaba.fastjson.parser.ParseContext parseContext, java.lang.Object obj, java.lang.Object obj2) {
        if (this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        com.alibaba.fastjson.parser.ParseContext parseContext2 = new com.alibaba.fastjson.parser.ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public com.alibaba.fastjson.parser.ParseContext setContext(java.lang.Object obj, java.lang.Object obj2) {
        if (this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public void setContext(com.alibaba.fastjson.parser.ParseContext parseContext) {
        if (this.lexer.isEnabled(com.alibaba.fastjson.parser.Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(java.text.DateFormat dateFormat) {
        setDateFormat(dateFormat);
    }

    public void setDateFormat(java.lang.String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setDateFormat(java.text.DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public void setFieldTypeResolver(com.alibaba.fastjson.parser.deserializer.FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error, expect ");
        sbO.append(com.alibaba.fastjson.parser.JSONToken.name(i));
        sbO.append(", actual ");
        sbO.append(com.alibaba.fastjson.parser.JSONToken.name(this.lexer.token()));
        throw new com.alibaba.fastjson.JSONException(sbO.toString());
    }
}
