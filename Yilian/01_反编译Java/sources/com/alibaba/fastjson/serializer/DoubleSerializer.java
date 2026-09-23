package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class DoubleSerializer implements com.alibaba.fastjson.serializer.ObjectSerializer {
    public static final com.alibaba.fastjson.serializer.DoubleSerializer instance = new com.alibaba.fastjson.serializer.DoubleSerializer();
    public java.text.DecimalFormat decimalFormat;

    public DoubleSerializer() {
        this.decimalFormat = null;
    }

    public DoubleSerializer(java.lang.String str) {
        this(new java.text.DecimalFormat(str));
    }

    public DoubleSerializer(java.text.DecimalFormat decimalFormat) {
        this.decimalFormat = null;
        this.decimalFormat = decimalFormat;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(com.alibaba.fastjson.serializer.JSONSerializer jSONSerializer, java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) throws java.io.IOException {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero);
            return;
        }
        double dDoubleValue = ((java.lang.Double) obj).doubleValue();
        if (java.lang.Double.isNaN(dDoubleValue) || java.lang.Double.isInfinite(dDoubleValue)) {
            serializeWriter.writeNull();
            return;
        }
        java.text.DecimalFormat decimalFormat = this.decimalFormat;
        if (decimalFormat == null) {
            serializeWriter.writeDouble(dDoubleValue, true);
        } else {
            serializeWriter.write(decimalFormat.format(dDoubleValue));
        }
    }
}
