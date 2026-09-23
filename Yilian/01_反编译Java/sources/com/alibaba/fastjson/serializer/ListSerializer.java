package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public final class ListSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.ListSerializer instance = new com.alibaba.fastjson.serializer.ListSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.io.IOException {
        int i2;
        java.lang.Object obj3;
        boolean z;
        boolean z2 = jSONSerializer.out.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) || com.alibaba.fastjson.serializer.SerializerFeature.isEnabled(i, com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName);
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        java.lang.reflect.Type collectionItemType = z2 ? com.alibaba.fastjson.util.TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        java.util.List list = (java.util.List) obj;
        if (list.size() == 0) {
            serializeWriter.append((java.lang.CharSequence) "[]");
            return;
        }
        com.alibaba.fastjson.serializer.SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c2 = ',';
            if (serializeWriter.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat)) {
                serializeWriter.append('[');
                jSONSerializer.incrementIndent();
                int i3 = 0;
                for (java.lang.Object obj4 : list) {
                    if (i3 != 0) {
                        serializeWriter.append(c2);
                    }
                    jSONSerializer.println();
                    if (obj4 == null) {
                        jSONSerializer.out.writeNull();
                    } else if (jSONSerializer.containsReference(obj4)) {
                        jSONSerializer.writeReference(obj4);
                    } else {
                        com.alibaba.fastjson.serializer.ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj4.getClass());
                        jSONSerializer.context = new com.alibaba.fastjson.serializer.SerialContext(serialContext, obj, obj2, 0, 0);
                        objectWriter.write(jSONSerializer, obj4, java.lang.Integer.valueOf(i3), collectionItemType, i);
                    }
                    i3++;
                    c2 = ',';
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter.append(']');
                return;
            }
            char c3 = ']';
            serializeWriter.append('[');
            int size = list.size();
            int i4 = 0;
            while (i4 < size) {
                java.lang.Object obj5 = list.get(i4);
                if (i4 != 0) {
                    serializeWriter.append(',');
                }
                if (obj5 == null) {
                    serializeWriter.append((java.lang.CharSequence) "null");
                } else {
                    java.lang.Class<?> cls = obj5.getClass();
                    if (cls == java.lang.Integer.class) {
                        serializeWriter.writeInt(((java.lang.Integer) obj5).intValue());
                    } else if (cls == java.lang.Long.class) {
                        long jLongValue = ((java.lang.Long) obj5).longValue();
                        if (z2) {
                            serializeWriter.writeLong(jLongValue);
                            serializeWriter.write(76);
                        } else {
                            serializeWriter.writeLong(jLongValue);
                        }
                    } else {
                        if ((com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask & i) != 0) {
                            i2 = i4;
                            jSONSerializer.getObjectWriter(obj5.getClass()).write(jSONSerializer, obj5, java.lang.Integer.valueOf(i4), collectionItemType, i);
                            z = z2;
                        } else {
                            i2 = i4;
                            if (serializeWriter.disableCircularReferenceDetect) {
                                obj3 = obj5;
                                z = z2;
                            } else {
                                obj3 = obj5;
                                z = z2;
                                jSONSerializer.context = new com.alibaba.fastjson.serializer.SerialContext(serialContext, obj, obj2, 0, 0);
                            }
                            if (jSONSerializer.containsReference(obj3)) {
                                jSONSerializer.writeReference(obj3);
                            } else {
                                com.alibaba.fastjson.serializer.ObjectSerializer objectWriter2 = jSONSerializer.getObjectWriter(obj3.getClass());
                                if ((com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask & i) == 0 || !(objectWriter2 instanceof com.alibaba.fastjson.serializer.JavaBeanSerializer)) {
                                    objectWriter2.write(jSONSerializer, obj3, java.lang.Integer.valueOf(i2), collectionItemType, i);
                                } else {
                                    ((com.alibaba.fastjson.serializer.JavaBeanSerializer) objectWriter2).writeNoneASM(jSONSerializer, obj3, java.lang.Integer.valueOf(i2), collectionItemType, i);
                                }
                            }
                        }
                        i4 = i2 + 1;
                        z2 = z;
                        c3 = ']';
                    }
                }
                i2 = i4;
                z = z2;
                i4 = i2 + 1;
                z2 = z;
                c3 = ']';
            }
            serializeWriter.append(c3);
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
