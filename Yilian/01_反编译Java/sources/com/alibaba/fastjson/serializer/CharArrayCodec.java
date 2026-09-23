package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class CharArrayCodec implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        boolean z;
        java.lang.String string;
        com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 4) {
            string = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
        } else if (jSONLexer.token() == 2) {
            java.lang.Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken(16);
            string = numberIntegerValue.toString();
        } else {
            java.lang.Object obj = defaultJSONParser.parse();
            if (!(obj instanceof java.lang.String)) {
                if (!(obj instanceof java.util.Collection)) {
                    if (obj == null) {
                        return null;
                    }
                    return (T) com.alibaba.fastjson.JSON.toJSONString(obj).toCharArray();
                }
                java.util.Collection collection = (java.util.Collection) obj;
                java.util.Iterator it = collection.iterator();
                while (true) {
                    z = true;
                    if (!it.hasNext()) {
                        break;
                    }
                    java.lang.Object next = it.next();
                    if ((next instanceof java.lang.String) && ((java.lang.String) next).length() != 1) {
                        z = false;
                        break;
                    }
                }
                if (!z) {
                    throw new com.alibaba.fastjson.JSONException("can not cast to char[]");
                }
                char[] cArr = new char[collection.size()];
                java.util.Iterator it2 = collection.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    cArr[i] = ((java.lang.String) it2.next()).charAt(0);
                    i++;
                }
                return cArr;
            }
            string = (java.lang.String) obj;
        }
        return (T) string.toCharArray();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        return (T) deserialze(defaultJSONParser);
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }
}
