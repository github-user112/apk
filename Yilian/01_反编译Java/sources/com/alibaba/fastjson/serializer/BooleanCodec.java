package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class BooleanCodec implements com.alibaba.fastjson.serializer.ObjectSerializer, com.alibaba.fastjson.parser.deserializer.ObjectDeserializer {
    public static final com.alibaba.fastjson.serializer.BooleanCodec instance = new com.alibaba.fastjson.serializer.BooleanCodec();

    /* JADX WARN: Removed duplicated region for block: B:22:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004b A[RETURN] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r5, java.lang.reflect.Type r6, java.lang.Object r7) {
        /*
            r4 = this;
            com.alibaba.fastjson.parser.JSONLexer r0 = r5.lexer
            int r1 = r0.token()     // Catch: java.lang.Exception -> L4c
            r2 = 6
            r3 = 16
            if (r1 != r2) goto Lf
            r0.nextToken(r3)     // Catch: java.lang.Exception -> L4c
            goto L2b
        Lf:
            int r1 = r0.token()     // Catch: java.lang.Exception -> L4c
            r2 = 7
            if (r1 != r2) goto L1a
            r0.nextToken(r3)     // Catch: java.lang.Exception -> L4c
            goto L2e
        L1a:
            int r1 = r0.token()     // Catch: java.lang.Exception -> L4c
            r2 = 2
            if (r1 != r2) goto L31
            int r5 = r0.intValue()     // Catch: java.lang.Exception -> L4c
            r0.nextToken(r3)     // Catch: java.lang.Exception -> L4c
            r0 = 1
            if (r5 != r0) goto L2e
        L2b:
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L4c
            goto L3d
        L2e:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE     // Catch: java.lang.Exception -> L4c
            goto L3d
        L31:
            java.lang.Object r5 = r5.parse()     // Catch: java.lang.Exception -> L4c
            if (r5 != 0) goto L39
            r5 = 0
            return r5
        L39:
            java.lang.Boolean r5 = com.alibaba.fastjson.util.TypeUtils.castToBoolean(r5)     // Catch: java.lang.Exception -> L4c
        L3d:
            java.lang.Class<java.util.concurrent.atomic.AtomicBoolean> r7 = java.util.concurrent.atomic.AtomicBoolean.class
            if (r6 != r7) goto L4b
            java.util.concurrent.atomic.AtomicBoolean r6 = new java.util.concurrent.atomic.AtomicBoolean
            boolean r5 = r5.booleanValue()
            r6.<init>(r5)
            return r6
        L4b:
            return r5
        L4c:
            r5 = move-exception
            com.alibaba.fastjson.JSONException r6 = new com.alibaba.fastjson.JSONException
            java.lang.String r0 = "parseBoolean error, field : "
            java.lang.String r7 = e.a.c.a.a.d(r0, r7)
            r6.<init>(r7, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.BooleanCodec.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object):java.lang.Object");
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 6;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.Boolean bool = (java.lang.Boolean) obj;
        if (bool == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse);
        } else {
            serializeWriter.write(bool.booleanValue() ? "true" : "false");
        }
    }
}
