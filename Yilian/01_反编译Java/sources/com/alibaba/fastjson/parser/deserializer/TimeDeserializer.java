package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class TimeDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.parser.deserializer.TimeDeserializer instance = new com.alibaba.fastjson.parser.deserializer.TimeDeserializer();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) throws java.lang.NumberFormatException {
        long timeInMillis;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken(4);
            if (jSONLexer.token() != 4) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            jSONLexer.nextTokenWithColon(2);
            if (jSONLexer.token() != 2) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            long jLongValue = jSONLexer.longValue();
            jSONLexer.nextToken(13);
            if (jSONLexer.token() != 13) {
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            jSONLexer.nextToken(16);
            return (T) new java.sql.Time(jLongValue);
        }
        T t = (T) defaultJSONParser.parse();
        if (t == 0) {
            return null;
        }
        if (t instanceof java.sql.Time) {
            return t;
        }
        if (t instanceof java.math.BigDecimal) {
            return (T) new java.sql.Time(com.alibaba.fastjson.util.TypeUtils.longValue((java.math.BigDecimal) t));
        }
        if (t instanceof java.lang.Number) {
            return (T) new java.sql.Time(((java.lang.Number) t).longValue());
        }
        if (!(t instanceof java.lang.String)) {
            throw new com.alibaba.fastjson.JSONException("parse error");
        }
        java.lang.String str = (java.lang.String) t;
        if (str.length() == 0) {
            return null;
        }
        com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(str);
        if (jSONScanner.scanISO8601DateIfMatch()) {
            timeInMillis = jSONScanner.getCalendar().getTimeInMillis();
        } else {
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= str.length()) {
                    z = true;
                    break;
                }
                char cCharAt = str.charAt(i);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i++;
            }
            if (!z) {
                jSONScanner.close();
                return (T) java.sql.Time.valueOf(str);
            }
            timeInMillis = java.lang.Long.parseLong(str);
        }
        jSONScanner.close();
        return (T) new java.sql.Time(timeInMillis);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }
}
