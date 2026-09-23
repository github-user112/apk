package com.alibaba.fastjson.parser.deserializer;

/* loaded from: classes.dex */
public class DefaultFieldDeserializer extends com.alibaba.fastjson.parser.deserializer.FieldDeserializer {
    public boolean customDeserilizer;
    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer fieldValueDeserilizer;

    public DefaultFieldDeserializer(com.alibaba.fastjson.parser.ParserConfig parserConfig, java.lang.Class<?> cls, com.alibaba.fastjson.util.FieldInfo fieldInfo) {
        super(cls, fieldInfo);
        boolean z = false;
        this.customDeserilizer = false;
        com.alibaba.fastjson.annotation.JSONField annotation = fieldInfo.getAnnotation();
        if (annotation != null) {
            java.lang.Class<?> clsDeserializeUsing = annotation.deserializeUsing();
            if (clsDeserializeUsing != null && clsDeserializeUsing != java.lang.Void.class) {
                z = true;
            }
            this.customDeserilizer = z;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public int getFastMatchToken() {
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer objectDeserializer = this.fieldValueDeserilizer;
        if (objectDeserializer != null) {
            return objectDeserializer.getFastMatchToken();
        }
        return 2;
    }

    public com.alibaba.fastjson.parser.deserializer.ObjectDeserializer getFieldValueDeserilizer(com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        if (this.fieldValueDeserilizer == null) {
            com.alibaba.fastjson.annotation.JSONField annotation = this.fieldInfo.getAnnotation();
            if (annotation == null || annotation.deserializeUsing() == java.lang.Void.class) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo = this.fieldInfo;
                this.fieldValueDeserilizer = parserConfig.getDeserializer(fieldInfo.fieldClass, fieldInfo.fieldType);
            } else {
                try {
                    this.fieldValueDeserilizer = (com.alibaba.fastjson.parser.deserializer.ObjectDeserializer) annotation.deserializeUsing().newInstance();
                } catch (java.lang.Exception e2) {
                    throw new com.alibaba.fastjson.JSONException("create deserializeUsing ObjectDeserializer error", e2);
                }
            }
        }
        return this.fieldValueDeserilizer;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public void parseField(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        java.lang.Object objDeserialze;
        com.alibaba.fastjson.util.FieldInfo fieldInfo;
        int i;
        if (this.fieldValueDeserilizer == null) {
            getFieldValueDeserilizer(defaultJSONParser.getConfig());
        }
        com.alibaba.fastjson.parser.deserializer.ObjectDeserializer deserializer = this.fieldValueDeserilizer;
        java.lang.reflect.Type fieldType = this.fieldInfo.fieldType;
        if (type instanceof java.lang.reflect.ParameterizedType) {
            com.alibaba.fastjson.parser.ParseContext context = defaultJSONParser.getContext();
            if (context != null) {
                context.type = type;
            }
            if (fieldType != type) {
                fieldType = com.alibaba.fastjson.util.FieldInfo.getFieldType(this.clazz, type, fieldType);
                if (deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaObjectDeserializer) {
                    deserializer = defaultJSONParser.getConfig().getDeserializer(fieldType);
                }
            }
        }
        java.lang.reflect.Type type2 = fieldType;
        if (!(deserializer instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) || (i = (fieldInfo = this.fieldInfo).parserFeatures) == 0) {
            com.alibaba.fastjson.util.FieldInfo fieldInfo2 = this.fieldInfo;
            if (!(fieldInfo2.format == null && fieldInfo2.parserFeatures == 0) && (deserializer instanceof com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer)) {
                com.alibaba.fastjson.util.FieldInfo fieldInfo3 = this.fieldInfo;
                objDeserialze = ((com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer) deserializer).deserialze(defaultJSONParser, type2, fieldInfo3.name, fieldInfo3.format, fieldInfo3.parserFeatures);
            } else {
                objDeserialze = deserializer.deserialze(defaultJSONParser, type2, this.fieldInfo.name);
            }
        } else {
            objDeserialze = ((com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) deserializer).deserialze(defaultJSONParser, type2, fieldInfo.name, i);
        }
        if ((objDeserialze instanceof byte[]) && ("gzip".equals(this.fieldInfo.format) || "gzip,base64".equals(this.fieldInfo.format))) {
            try {
                java.util.zip.GZIPInputStream gZIPInputStream = new java.util.zip.GZIPInputStream(new java.io.ByteArrayInputStream((byte[]) objDeserialze));
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                while (true) {
                    byte[] bArr = new byte[1024];
                    int i2 = gZIPInputStream.read(bArr);
                    if (i2 == -1) {
                        break;
                    } else if (i2 > 0) {
                        byteArrayOutputStream.write(bArr, 0, i2);
                    }
                }
                objDeserialze = byteArrayOutputStream.toByteArray();
            } catch (java.io.IOException e2) {
                throw new com.alibaba.fastjson.JSONException("unzip bytes error.", e2);
            }
        }
        if (defaultJSONParser.getResolveStatus() == 1) {
            com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask lastResolveTask = defaultJSONParser.getLastResolveTask();
            lastResolveTask.fieldDeserializer = this;
            lastResolveTask.ownerContext = defaultJSONParser.getContext();
            defaultJSONParser.setResolveStatus(0);
            return;
        }
        if (obj == null) {
            map.put(this.fieldInfo.name, objDeserialze);
        } else {
            setValue(obj, objDeserialze);
        }
    }

    public void parseFieldUnwrapped(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser, java.lang.Object obj, java.lang.reflect.Type type, java.util.Map<java.lang.String, java.lang.Object> map) {
        throw new com.alibaba.fastjson.JSONException("TODO");
    }
}
