package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public interface JSONLexer {
    public static final int ARRAY = 2;
    public static final int END = 4;
    public static final char EOI = 26;
    public static final int NOT_MATCH = -1;
    public static final int NOT_MATCH_NAME = -2;
    public static final int OBJECT = 1;
    public static final int UNKNOWN = 0;
    public static final int VALUE = 3;
    public static final int VALUE_NULL = 5;

    byte[] bytesValue();

    void close();

    void config(com.alibaba.fastjson.parser.Feature feature, boolean z);

    java.lang.Number decimalValue(boolean z);

    java.math.BigDecimal decimalValue();

    float floatValue();

    char getCurrent();

    int getFeatures();

    java.util.Locale getLocale();

    java.util.TimeZone getTimeZone();

    java.lang.String info();

    int intValue();

    java.lang.Number integerValue();

    boolean isBlankInput();

    boolean isEnabled(int i);

    boolean isEnabled(com.alibaba.fastjson.parser.Feature feature);

    boolean isRef();

    long longValue();

    char next();

    void nextToken();

    void nextToken(int i);

    void nextTokenWithColon();

    void nextTokenWithColon(int i);

    java.lang.String numberString();

    int pos();

    void resetStringPosition();

    boolean scanBoolean(char c2);

    java.math.BigDecimal scanDecimal(char c2);

    double scanDouble(char c2);

    java.lang.Enum<?> scanEnum(java.lang.Class<?> cls, com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2);

    float scanFloat(char c2);

    int scanInt(char c2);

    long scanLong(char c2);

    void scanNumber();

    java.lang.String scanString(char c2);

    void scanString();

    void scanStringArray(java.util.Collection<java.lang.String> collection, char c2);

    java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2);

    java.lang.String scanSymbolUnQuoted(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    java.lang.String scanSymbolWithSeperator(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2);

    java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable);

    void setFeatures(int i);

    void setLocale(java.util.Locale locale);

    void setTimeZone(java.util.TimeZone timeZone);

    void skipWhitespace();

    java.lang.String stringVal();

    int token();

    java.lang.String tokenName();
}
