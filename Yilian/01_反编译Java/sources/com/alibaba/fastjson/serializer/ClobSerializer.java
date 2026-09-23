package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class ClobSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.ClobSerializer instance = new com.alibaba.fastjson.serializer.ClobSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.sql.SQLException, java.io.IOException {
        try {
            if (obj == null) {
                jSONSerializer.writeNull();
                return;
            }
            java.io.Reader characterStream = ((java.sql.Clob) obj).getCharacterStream();
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            try {
                char[] cArr = new char[2048];
                while (true) {
                    int i2 = characterStream.read(cArr, 0, 2048);
                    if (i2 < 0) {
                        java.lang.String string = sb.toString();
                        characterStream.close();
                        jSONSerializer.write(string);
                        return;
                    }
                    sb.append(cArr, 0, i2);
                }
            } catch (java.lang.Exception e2) {
                throw new com.alibaba.fastjson.JSONException("read string from reader error", e2);
            }
        } catch (java.sql.SQLException e3) {
            throw new java.io.IOException("write clob error", e3);
        }
    }
}
