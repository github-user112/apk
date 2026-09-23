package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class ArrayListTypeFieldDeserializer extends com.alibaba.fastjson.parser.deserializer.FieldDeserializer {
    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer;
    public int itemFastMatchToken;
    public final java.lang.reflect.Type itemType;

    public ArrayListTypeFieldDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        java.lang.reflect.Type type;
        super(cls, fieldInfo);
        java.lang.reflect.Type type2 = fieldInfo.fieldType;
        if (type2 instanceof java.lang.reflect.ParameterizedType) {
            type = ((java.lang.reflect.ParameterizedType) type2).getActualTypeArguments()[0];
            if (type instanceof java.lang.reflect.WildcardType) {
                java.lang.reflect.Type[] upperBounds = ((java.lang.reflect.WildcardType) type).getUpperBounds();
                if (upperBounds.length == 1) {
                    type = upperBounds[0];
                }
            }
        } else {
            type = java.lang.Object.class;
        }
        this.itemType = type;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public int getFastMatchToken() {
        return 14;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void parseArray(com.alibaba.fastjson.parser.DefaultJSONParser r13, java.lang.reflect.Type r14, java.util.Collection r15) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer.parseArray(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.util.Collection):void");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public void parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        int i = jSONLexer.token();
        if (i == 8 || (i == 4 && jSONLexer.stringVal().length() == 0)) {
            if (obj == null) {
                map.put(this.fieldInfo.name, null);
                return;
            } else {
                setValue(obj, (java.lang.String) null);
                return;
            }
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
        defaultJSONParser.setContext(context, obj, this.fieldInfo.name);
        parseArray(defaultJSONParser, type, arrayList);
        defaultJSONParser.setContext(context);
        if (obj == null) {
            map.put(this.fieldInfo.name, arrayList);
        } else {
            setValue(obj, arrayList);
        }
    }
}
