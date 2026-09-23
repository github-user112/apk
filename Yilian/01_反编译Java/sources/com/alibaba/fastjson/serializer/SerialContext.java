package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class SerialContext {
    public final int features;
    public final java.lang.Object fieldName;
    public final java.lang.Object object;
    public final com.alibaba.fastjson.serializer.SerialContext parent;

    public SerialContext(com.alibaba.fastjson.serializer.SerialContext serialContext, java.lang.Object obj, java.lang.Object obj2, int i, int i2) {
        this.parent = serialContext;
        this.object = obj;
        this.fieldName = obj2;
        this.features = i;
    }

    public java.lang.Object getFieldName() {
        return this.fieldName;
    }

    public java.lang.Object getObject() {
        return this.object;
    }

    public com.alibaba.fastjson.serializer.SerialContext getParent() {
        return this.parent;
    }

    public java.lang.String getPath() {
        return toString();
    }

    public java.lang.String toString() {
        if (this.parent == null) {
            return "$";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        toString(sb);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0079  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void toString(java.lang.StringBuilder r13) {
        /*
            r12 = this;
            com.alibaba.fastjson.serializer.SerialContext r0 = r12.parent
            if (r0 != 0) goto Lb
            r0 = 36
        L6:
            r13.append(r0)
            goto L9d
        Lb:
            r0.toString(r13)
            java.lang.Object r0 = r12.fieldName
            if (r0 != 0) goto L19
            java.lang.String r0 = ".null"
        L14:
            r13.append(r0)
            goto L9d
        L19:
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 == 0) goto L30
            r0 = 91
            r13.append(r0)
            java.lang.Object r0 = r12.fieldName
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
            r13.append(r0)
            r0 = 93
            goto L6
        L30:
            r0 = 46
            r13.append(r0)
            java.lang.Object r0 = r12.fieldName
            java.lang.String r0 = r0.toString()
            r1 = 0
            r2 = 0
        L3d:
            int r3 = r0.length()
            r4 = 122(0x7a, float:1.71E-43)
            r5 = 128(0x80, float:1.794E-43)
            r6 = 90
            r7 = 97
            r8 = 57
            r9 = 65
            r10 = 48
            if (r2 >= r3) goto L68
            char r3 = r0.charAt(r2)
            if (r3 < r10) goto L59
            if (r3 <= r8) goto L63
        L59:
            if (r3 < r9) goto L5d
            if (r3 <= r6) goto L63
        L5d:
            if (r3 < r7) goto L61
            if (r3 <= r4) goto L63
        L61:
            if (r3 <= r5) goto L66
        L63:
            int r2 = r2 + 1
            goto L3d
        L66:
            r2 = 1
            goto L69
        L68:
            r2 = 0
        L69:
            if (r2 == 0) goto L14
        L6b:
            int r2 = r0.length()
            if (r1 >= r2) goto L9d
            char r2 = r0.charAt(r1)
            r3 = 92
            if (r2 != r3) goto L83
        L79:
            r13.append(r3)
        L7c:
            r13.append(r3)
            r13.append(r3)
            goto L97
        L83:
            if (r2 < r10) goto L87
            if (r2 <= r8) goto L97
        L87:
            if (r2 < r9) goto L8b
            if (r2 <= r6) goto L97
        L8b:
            if (r2 < r7) goto L8f
            if (r2 <= r4) goto L97
        L8f:
            if (r2 <= r5) goto L92
            goto L97
        L92:
            r11 = 34
            if (r2 != r11) goto L7c
            goto L79
        L97:
            r13.append(r2)
            int r1 = r1 + 1
            goto L6b
        L9d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerialContext.toString(java.lang.StringBuilder):void");
    }
}
