package com.alibaba.fastjson.support.hsf;

/* loaded from: classes.dex */
public class HSFJSONUtils {
    public static final com.alibaba.fastjson.parser.SymbolTable typeSymbolTable = new com.alibaba.fastjson.parser.SymbolTable(1024);
    public static final char[] fieldName_argsTypes = "\"argsTypes\"".toCharArray();
    public static final char[] fieldName_argsObjs = "\"argsObjs\"".toCharArray();
    public static final char[] fieldName_type = "\"@type\":".toCharArray();

    public static java.lang.Object[] parseInvocationArguments(java.lang.String str, com.alibaba.fastjson.support.hsf.MethodLocator methodLocator) throws java.lang.NumberFormatException {
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser = new com.alibaba.fastjson.parser.DefaultJSONParser(str);
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.getLexer();
        java.lang.Object[] objArr = null;
        com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.setContext(null, null);
        int i = jSONLexerBase.token();
        int i2 = 0;
        if (i != 12) {
            if (i != 14) {
                return null;
            }
            java.lang.String[] strArrScanFieldStringArray = jSONLexerBase.scanFieldStringArray(null, -1, typeSymbolTable);
            jSONLexerBase.skipWhitespace();
            char current = jSONLexerBase.getCurrent();
            if (current != ']') {
                if (current == ',') {
                    jSONLexerBase.next();
                    jSONLexerBase.skipWhitespace();
                }
                jSONLexerBase.nextToken(14);
                java.lang.Object[] array = defaultJSONParser.parseArray(methodLocator.findMethod(strArrScanFieldStringArray).getGenericParameterTypes());
                jSONLexerBase.close();
                return array;
            }
            java.lang.reflect.Type[] genericParameterTypes = methodLocator.findMethod(null).getGenericParameterTypes();
            java.lang.Object[] objArr2 = new java.lang.Object[strArrScanFieldStringArray.length];
            while (i2 < strArrScanFieldStringArray.length) {
                java.lang.reflect.Type type = genericParameterTypes[i2];
                java.lang.String str2 = strArrScanFieldStringArray[i2];
                if (type != java.lang.String.class) {
                    objArr2[i2] = com.alibaba.fastjson.util.TypeUtils.cast(str2, type, defaultJSONParser.getConfig());
                } else {
                    objArr2[i2] = str2;
                }
                i2++;
            }
            return objArr2;
        }
        java.lang.String[] strArrScanFieldStringArray2 = jSONLexerBase.scanFieldStringArray(fieldName_argsTypes, -1, typeSymbolTable);
        if (strArrScanFieldStringArray2 == null && jSONLexerBase.matchStat == -2 && "com.alibaba.fastjson.JSONObject".equals(jSONLexerBase.scanFieldString(fieldName_type))) {
            strArrScanFieldStringArray2 = jSONLexerBase.scanFieldStringArray(fieldName_argsTypes, -1, typeSymbolTable);
        }
        java.lang.reflect.Method methodFindMethod = methodLocator.findMethod(strArrScanFieldStringArray2);
        if (methodFindMethod == null) {
            jSONLexerBase.close();
            com.alibaba.fastjson.JSONObject object = com.alibaba.fastjson.JSON.parseObject(str);
            java.lang.reflect.Method methodFindMethod2 = methodLocator.findMethod((java.lang.String[]) object.getObject("argsTypes", java.lang.String[].class));
            com.alibaba.fastjson.JSONArray jSONArray = object.getJSONArray("argsObjs");
            if (jSONArray == null) {
                return null;
            }
            java.lang.reflect.Type[] genericParameterTypes2 = methodFindMethod2.getGenericParameterTypes();
            java.lang.Object[] objArr3 = new java.lang.Object[genericParameterTypes2.length];
            while (i2 < genericParameterTypes2.length) {
                objArr3[i2] = jSONArray.getObject(i2, genericParameterTypes2[i2]);
                i2++;
            }
            return objArr3;
        }
        java.lang.reflect.Type[] genericParameterTypes3 = methodFindMethod.getGenericParameterTypes();
        jSONLexerBase.skipWhitespace();
        if (jSONLexerBase.getCurrent() == ',') {
            jSONLexerBase.next();
        }
        if (jSONLexerBase.matchField2(fieldName_argsObjs)) {
            jSONLexerBase.nextToken();
            com.alibaba.fastjson.parser.ParseContext context2 = defaultJSONParser.setContext(context, null, "argsObjs");
            java.lang.Object[] array2 = defaultJSONParser.parseArray(genericParameterTypes3);
            context2.object = array2;
            defaultJSONParser.accept(13);
            defaultJSONParser.handleResovleTask(null);
            objArr = array2;
        }
        defaultJSONParser.close();
        return objArr;
    }
}
