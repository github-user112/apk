package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public abstract class AbstractDateDeserializer extends com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public abstract <T> T cast(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.Object obj2);

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, null, 0);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj, java.lang.String str, int i) throws java.lang.Throwable {
        java.lang.Object objValueOf;
        java.text.SimpleDateFormat simpleDateFormat;
        java.util.Date date;
        java.text.SimpleDateFormat simpleDateFormat2;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        java.lang.Object objValueOf2 = null;
        if (jSONLexer.token() == 2) {
            long jLongValue = jSONLexer.longValue();
            jSONLexer.nextToken(16);
            if ("unixtime".equals(str)) {
                jLongValue *= 1000;
            }
            objValueOf2 = java.lang.Long.valueOf(jLongValue);
        } else if (jSONLexer.token() == 4) {
            java.lang.String strStringVal = jSONLexer.stringVal();
            if (str != null) {
                if ("yyyy-MM-dd HH:mm:ss.SSSSSSSSS".equals(str) && (type instanceof java.lang.Class) && ((java.lang.Class) type).getName().equals("java.sql.Timestamp")) {
                    return (T) com.alibaba.fastjson.util.TypeUtils.castToTimestamp(strStringVal);
                }
                try {
                    simpleDateFormat = new java.text.SimpleDateFormat(str, defaultJSONParser.lexer.getLocale());
                } catch (java.lang.IllegalArgumentException e2) {
                    if (str.contains("T")) {
                        try {
                            simpleDateFormat = new java.text.SimpleDateFormat(str.replaceAll("T", "'T'"), defaultJSONParser.lexer.getLocale());
                        } catch (java.lang.IllegalArgumentException unused) {
                            throw e2;
                        }
                    } else {
                        simpleDateFormat = null;
                    }
                }
                if (com.alibaba.fastjson.JSON.defaultTimeZone != null) {
                    simpleDateFormat.setTimeZone(defaultJSONParser.lexer.getTimeZone());
                }
                try {
                    date = simpleDateFormat.parse(strStringVal);
                } catch (java.text.ParseException unused2) {
                    date = null;
                }
                if (date == null && com.alibaba.fastjson.JSON.defaultLocale == java.util.Locale.CHINA) {
                    try {
                        simpleDateFormat2 = new java.text.SimpleDateFormat(str, java.util.Locale.US);
                    } catch (java.lang.IllegalArgumentException e3) {
                        simpleDateFormat2 = simpleDateFormat;
                        if (str.contains("T")) {
                            try {
                                simpleDateFormat2 = new java.text.SimpleDateFormat(str.replaceAll("T", "'T'"), defaultJSONParser.lexer.getLocale());
                            } catch (java.lang.IllegalArgumentException unused3) {
                                throw e3;
                            }
                        }
                    }
                    simpleDateFormat2.setTimeZone(defaultJSONParser.lexer.getTimeZone());
                    try {
                        date = simpleDateFormat2.parse(strStringVal);
                    } catch (java.text.ParseException unused4) {
                        date = null;
                    }
                }
                if (date != null) {
                    objValueOf2 = date;
                } else if (str.equals("yyyy-MM-dd'T'HH:mm:ss.SSS") && strStringVal.length() == 19) {
                    try {
                        java.text.SimpleDateFormat simpleDateFormat3 = new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", com.alibaba.fastjson.JSON.defaultLocale);
                        simpleDateFormat3.setTimeZone(com.alibaba.fastjson.JSON.defaultTimeZone);
                        objValueOf2 = simpleDateFormat3.parse(strStringVal);
                    } catch (java.text.ParseException unused5) {
                    }
                }
            }
            if (objValueOf2 == null) {
                jSONLexer.nextToken(16);
                java.lang.Object obj2 = strStringVal;
                if (jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.AllowISO8601DateFormat)) {
                    com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strStringVal);
                    java.lang.Object time = strStringVal;
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        time = jSONScanner.getCalendar().getTime();
                    }
                    jSONScanner.close();
                    obj2 = time;
                }
                objValueOf2 = obj2;
            }
        } else if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
        } else {
            if (jSONLexer.token() == 12) {
                jSONLexer.nextToken();
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                if (com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY.equals(jSONLexer.stringVal())) {
                    jSONLexer.nextToken();
                    defaultJSONParser.accept(17);
                    java.lang.Class<?> clsCheckAutoType = defaultJSONParser.getConfig().checkAutoType(jSONLexer.stringVal(), null, jSONLexer.getFeatures());
                    if (clsCheckAutoType != null) {
                        type = clsCheckAutoType;
                    }
                    defaultJSONParser.accept(4);
                    defaultJSONParser.accept(16);
                }
                jSONLexer.nextTokenWithColon(2);
                if (jSONLexer.token() != 2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("syntax error : ");
                    sbO.append(jSONLexer.tokenName());
                    throw new com.alibaba.fastjson.JSONException(sbO.toString());
                }
                long jLongValue2 = jSONLexer.longValue();
                jSONLexer.nextToken();
                objValueOf = java.lang.Long.valueOf(jLongValue2);
            } else if (defaultJSONParser.getResolveStatus() == 2) {
                defaultJSONParser.setResolveStatus(0);
                defaultJSONParser.accept(16);
                if (jSONLexer.token() != 4) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                if (!"val".equals(jSONLexer.stringVal())) {
                    throw new com.alibaba.fastjson.JSONException("syntax error");
                }
                jSONLexer.nextToken();
                defaultJSONParser.accept(17);
                objValueOf = defaultJSONParser.parse();
            } else {
                objValueOf2 = defaultJSONParser.parse();
            }
            objValueOf2 = objValueOf;
            defaultJSONParser.accept(13);
        }
        return (T) cast(defaultJSONParser, type, obj, objValueOf2);
    }
}
