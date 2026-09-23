package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class EnumDeserializer implements com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public final java.lang.Class<?> enumClass;
    public long[] enumNameHashCodes;
    public final java.lang.Enum[] enums;
    public final java.lang.Enum[] ordinalEnums;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00c1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EnumDeserializer(java.lang.Class<?> r22) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.EnumDeserializer.<init>(java.lang.Class):void");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.reflect.Type type, java.lang.Object obj) {
        try {
            com.alibaba.fastjson.parser.JSONLexer jSONLexer = defaultJSONParser.lexer;
            int i = jSONLexer.token();
            if (i == 2) {
                int iIntValue = jSONLexer.intValue();
                jSONLexer.nextToken(16);
                if (iIntValue >= 0 && iIntValue < this.ordinalEnums.length) {
                    return (T) this.ordinalEnums[iIntValue];
                }
                throw new com.alibaba.fastjson.JSONException("parse enum " + this.enumClass.getName() + " error, value : " + iIntValue);
            }
            if (i != 4) {
                if (i == 8) {
                    jSONLexer.nextToken(16);
                    return null;
                }
                throw new com.alibaba.fastjson.JSONException("parse enum " + this.enumClass.getName() + " error, value : " + defaultJSONParser.parse());
            }
            java.lang.String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (strStringVal.length() == 0) {
                return null;
            }
            long j = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
            long j2 = -3750763034362895579L;
            for (int i2 = 0; i2 < strStringVal.length(); i2++) {
                int iCharAt = strStringVal.charAt(i2);
                long j3 = j ^ iCharAt;
                if (iCharAt >= 65 && iCharAt <= 90) {
                    iCharAt += 32;
                }
                j = j3 * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
                j2 = (j2 ^ iCharAt) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            }
            T t = (T) getEnumByHashCode(j);
            if (t == null && j2 != j) {
                t = (T) getEnumByHashCode(j2);
            }
            if (t == null && jSONLexer.isEnabled(com.alibaba.fastjson.parser.Feature.ErrorOnEnumNotMatch)) {
                throw new com.alibaba.fastjson.JSONException("not match enum value, " + this.enumClass.getName() + " : " + strStringVal);
            }
            return t;
        } catch (com.alibaba.fastjson.JSONException e2) {
            throw e2;
        } catch (java.lang.Exception e3) {
            throw new com.alibaba.fastjson.JSONException(e3.getMessage(), e3);
        }
    }

    public java.lang.Enum getEnumByHashCode(long j) {
        int iBinarySearch;
        if (this.enums != null && (iBinarySearch = java.util.Arrays.binarySearch(this.enumNameHashCodes, j)) >= 0) {
            return this.enums[iBinarySearch];
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 2;
    }

    public java.lang.Enum<?> valueOf(int i) {
        return this.ordinalEnums[i];
    }
}
