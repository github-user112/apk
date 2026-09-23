package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class MapDeserializer extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static com.alibaba.fastjson.parser.deserializer.MapDeserializer instance = new com.alibaba.fastjson.parser.deserializer.MapDeserializer();

    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa A[Catch: all -> 0x0187, TRY_LEAVE, TryCatch #0 {all -> 0x0187, blocks: (B:10:0x0045, B:12:0x004d, B:15:0x0054, B:17:0x005c, B:19:0x0062, B:21:0x006a, B:23:0x0073, B:25:0x007f, B:32:0x0092, B:34:0x00a1, B:36:0x00aa, B:39:0x00b1, B:40:0x00b8, B:26:0x0082, B:29:0x008b, B:31:0x008f, B:33:0x0095, B:41:0x00b9, B:42:0x00d7, B:43:0x00d8, B:45:0x00de, B:47:0x00e4, B:49:0x00f0, B:51:0x00f8, B:53:0x0104, B:56:0x010b, B:57:0x0112, B:59:0x0118, B:61:0x011c, B:63:0x0144, B:65:0x014c, B:67:0x0163, B:68:0x016c, B:69:0x0186, B:62:0x0140), top: B:74:0x0045 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1 A[Catch: all -> 0x0187, TRY_ENTER, TryCatch #0 {all -> 0x0187, blocks: (B:10:0x0045, B:12:0x004d, B:15:0x0054, B:17:0x005c, B:19:0x0062, B:21:0x006a, B:23:0x0073, B:25:0x007f, B:32:0x0092, B:34:0x00a1, B:36:0x00aa, B:39:0x00b1, B:40:0x00b8, B:26:0x0082, B:29:0x008b, B:31:0x008f, B:33:0x0095, B:41:0x00b9, B:42:0x00d7, B:43:0x00d8, B:45:0x00de, B:47:0x00e4, B:49:0x00f0, B:51:0x00f8, B:53:0x0104, B:56:0x010b, B:57:0x0112, B:59:0x0118, B:61:0x011c, B:63:0x0144, B:65:0x014c, B:67:0x0163, B:68:0x016c, B:69:0x0186, B:62:0x0140), top: B:74:0x0045 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object parseMap(com.alibaba.fastjson.parser.DefaultJSONParser r9, java.util.Map<java.lang.Object, java.lang.Object> r10, java.lang.reflect.Type r11, java.lang.reflect.Type r12, java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.MapDeserializer.parseMap(com.alibaba.fastjson.parser.DefaultJSONParser, java.util.Map, java.lang.reflect.Type, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    public static java.util.Map parseMap(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.util.Map<java.lang.String, java.lang.Object> map, java.lang.reflect.Type type, java.lang.Object obj) {
        return parseMap(defaultJSONParser, map, type, obj, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x0205, code lost:
    
        return r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0195 A[Catch: all -> 0x022d, TryCatch #1 {all -> 0x022d, blocks: (B:25:0x007c, B:29:0x008f, B:33:0x00a4, B:58:0x0139, B:60:0x014b, B:62:0x0153, B:64:0x015b, B:76:0x018d, B:78:0x0195, B:80:0x019e, B:83:0x01a5, B:85:0x01b2, B:87:0x01b6, B:88:0x01b9, B:67:0x0170, B:70:0x017b, B:73:0x0182, B:91:0x01c3, B:93:0x01c8, B:94:0x01cb, B:96:0x01d3, B:98:0x01dc, B:104:0x01f7, B:97:0x01d8, B:36:0x00b7, B:37:0x00cf, B:40:0x00d4, B:45:0x00e7, B:47:0x00ef, B:50:0x0101, B:51:0x0119, B:52:0x011a, B:53:0x011f, B:54:0x0120, B:56:0x0128, B:110:0x0206, B:111:0x0226, B:112:0x0227, B:113:0x022c), top: B:121:0x007c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map parseMap(com.alibaba.fastjson.parser.DefaultJSONParser r11, java.util.Map<java.lang.String, java.lang.Object> r12, java.lang.reflect.Type r13, java.lang.Object r14, int r15) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.MapDeserializer.parseMap(com.alibaba.fastjson.parser.DefaultJSONParser, java.util.Map, java.lang.reflect.Type, java.lang.Object, int):java.util.Map");
    }

    public java.util.Map<java.lang.Object, java.lang.Object> createMap(java.lang.reflect.Type type) {
        return createMap(type, com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE);
    }

    public java.util.Map<java.lang.Object, java.lang.Object> createMap(java.lang.reflect.Type type, int i) {
        if (type == java.util.Properties.class) {
            return new java.util.Properties();
        }
        if (type == java.util.Hashtable.class) {
            return new java.util.Hashtable();
        }
        if (type == java.util.IdentityHashMap.class) {
            return new java.util.IdentityHashMap();
        }
        if (type == java.util.SortedMap.class || type == java.util.TreeMap.class) {
            return new java.util.TreeMap();
        }
        if (type == java.util.concurrent.ConcurrentMap.class || type == java.util.concurrent.ConcurrentHashMap.class) {
            return new java.util.concurrent.ConcurrentHashMap();
        }
        if (type == java.util.Map.class) {
            return (com.alibaba.fastjson.parser.Feature.OrderedField.mask & i) != 0 ? new java.util.LinkedHashMap() : new java.util.HashMap();
        }
        if (type == java.util.HashMap.class) {
            return new java.util.HashMap();
        }
        if (type == java.util.LinkedHashMap.class) {
            return new java.util.LinkedHashMap();
        }
        if (type instanceof java.lang.reflect.ParameterizedType) {
            java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
            java.lang.reflect.Type rawType = parameterizedType.getRawType();
            return java.util.EnumMap.class.equals(rawType) ? new java.util.EnumMap((java.lang.Class) parameterizedType.getActualTypeArguments()[0]) : createMap(rawType, i);
        }
        java.lang.Class cls = (java.lang.Class) type;
        if (cls.isInterface()) {
            throw new com.alibaba.fastjson.JSONException("unsupport type " + type);
        }
        if ("java.util.Collections$UnmodifiableMap".equals(cls.getName())) {
            return new java.util.HashMap();
        }
        try {
            return (java.util.Map) cls.newInstance();
        } catch (java.lang.Exception e2) {
            throw new com.alibaba.fastjson.JSONException("unsupport type " + type, e2);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i) {
        if (type == com.alibaba.fastjson.JSONObject.class && defaultJSONParser.getFieldTypeResolver() == null) {
            return (T) defaultJSONParser.parseObject();
        }
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        boolean z = (type instanceof java.lang.Class) && "java.util.Collections$UnmodifiableMap".equals(((java.lang.Class) type).getName());
        java.util.Map<java.lang.Object, java.lang.Object> mapCreateMap = (jSONLexer.getFeatures() & com.alibaba.fastjson.parser.Feature.OrderedField.mask) != 0 ? createMap(type, jSONLexer.getFeatures()) : createMap(type);
        com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
        try {
            defaultJSONParser.setContext(context, mapCreateMap, obj);
            java.util.Map map = (T) deserialze(defaultJSONParser, type, obj, mapCreateMap, i);
            if (z) {
                map = (T) java.util.Collections.unmodifiableMap(map);
            }
            return (T) map;
        } finally {
            defaultJSONParser.setContext(context);
        }
    }

    public java.lang.Object deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.util.Map map) {
        return deserialze(defaultJSONParser, type, obj, map, 0);
    }

    public java.lang.Object deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.util.Map map, int i) {
        if (!(type instanceof java.lang.reflect.ParameterizedType)) {
            return defaultJSONParser.parseObject(map, obj);
        }
        java.lang.reflect.ParameterizedType parameterizedType = (java.lang.reflect.ParameterizedType) type;
        java.lang.reflect.Type type2 = parameterizedType.getActualTypeArguments()[0];
        java.lang.reflect.Type type3 = map.getClass().getName().equals("org.springframework.util.LinkedMultiValueMap") ? java.util.List.class : parameterizedType.getActualTypeArguments()[1];
        return java.lang.String.class == type2 ? parseMap(defaultJSONParser, (java.util.Map<java.lang.String, java.lang.Object>) map, type3, obj, i) : parseMap(defaultJSONParser, (java.util.Map<java.lang.Object, java.lang.Object>) map, type2, type3, obj);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }
}
