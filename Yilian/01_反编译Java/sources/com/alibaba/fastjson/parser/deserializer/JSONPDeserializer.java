package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class JSONPDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.JSONPDeserializer instance = new com.alibaba.fastjson.parser.deserializer.JSONPDeserializer();

    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.alibaba.fastjson.JSONPObject] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) throws java.lang.NumberFormatException {
        int i;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase = (com.alibaba.fastjson.parser.JSONLexerBase) defaultJSONParser.getLexer();
        java.lang.String strScanSymbolUnQuoted = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
        jSONLexerBase.nextToken();
        int i2 = jSONLexerBase.token();
        if (i2 == 25) {
            java.lang.String strScanSymbolUnQuoted2 = jSONLexerBase.scanSymbolUnQuoted(defaultJSONParser.getSymbolTable());
            strScanSymbolUnQuoted = e.a.c.a.a.e(strScanSymbolUnQuoted, ".") + strScanSymbolUnQuoted2;
            jSONLexerBase.nextToken();
            i2 = jSONLexerBase.token();
        }
        ?? r1 = (T) new com.alibaba.fastjson.JSONPObject(strScanSymbolUnQuoted);
        if (i2 != 10) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal jsonp : ");
            sbO.append(jSONLexerBase.info());
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        do {
            jSONLexerBase.nextToken();
            r1.addParameter(defaultJSONParser.parse());
            i = jSONLexerBase.token();
        } while (i == 16);
        if (i != 11) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("illegal jsonp : ");
            sbO2.append(jSONLexerBase.info());
            throw new com.alibaba.fastjson.JSONException(sbO2.toString());
        }
        jSONLexerBase.nextToken();
        if (jSONLexerBase.token() == 24) {
            jSONLexerBase.nextToken();
        }
        return r1;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 0;
    }
}
