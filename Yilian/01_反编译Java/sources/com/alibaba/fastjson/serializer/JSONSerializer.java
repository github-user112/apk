package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public class JSONSerializer extends com.alibaba.fastjson.serializer.SerializeFilterable {
    public final com.alibaba.fastjson.serializer.SerializeConfig config;
    public com.alibaba.fastjson.serializer.SerialContext context;
    public java.text.DateFormat dateFormat;
    public java.lang.String dateFormatPattern;
    public java.lang.String fastJsonConfigDateFormatPattern;
    public java.lang.String indent;
    public int indentCount;
    public java.util.Locale locale;
    public final com.alibaba.fastjson.serializer.SerializeWriter out;
    public java.util.IdentityHashMap<java.lang.Object, com.alibaba.fastjson.serializer.SerialContext> references;
    public java.util.TimeZone timeZone;

    public JSONSerializer() {
        this(new com.alibaba.fastjson.serializer.SerializeWriter(), com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance());
    }

    public JSONSerializer(com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        this(new com.alibaba.fastjson.serializer.SerializeWriter(), serializeConfig);
    }

    public JSONSerializer(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter) {
        this(serializeWriter, com.alibaba.fastjson.serializer.SerializeConfig.getGlobalInstance());
    }

    public JSONSerializer(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, com.alibaba.fastjson.serializer.SerializeConfig serializeConfig) {
        this.indentCount = 0;
        this.indent = "\t";
        this.references = null;
        this.timeZone = com.alibaba.fastjson.JSON.defaultTimeZone;
        this.locale = com.alibaba.fastjson.JSON.defaultLocale;
        this.out = serializeWriter;
        this.config = serializeConfig;
    }

    private java.text.DateFormat generateDateFormat(java.lang.String str) {
        java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(str, this.locale);
        simpleDateFormat.setTimeZone(this.timeZone);
        return simpleDateFormat;
    }

    public static void write(com.alibaba.fastjson.serializer.SerializeWriter serializeWriter, java.lang.Object obj) {
        new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
    }

    public static void write(java.io.Writer writer, java.lang.Object obj) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            try {
                new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(obj);
                serializeWriter.writeTo(writer);
            } catch (java.io.IOException e2) {
                throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
            }
        } finally {
            serializeWriter.close();
        }
    }

    public boolean checkValue(com.alibaba.fastjson.serializer.SerializeFilterable serializeFilterable) {
        java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> list;
        java.util.List<com.alibaba.fastjson.serializer.ValueFilter> list2;
        java.util.List<com.alibaba.fastjson.serializer.ContextValueFilter> list3;
        java.util.List<com.alibaba.fastjson.serializer.ValueFilter> list4 = this.valueFilters;
        return (list4 != null && list4.size() > 0) || ((list = this.contextValueFilters) != null && list.size() > 0) || (((list2 = serializeFilterable.valueFilters) != null && list2.size() > 0) || (((list3 = serializeFilterable.contextValueFilters) != null && list3.size() > 0) || this.out.writeNonStringValueAsString));
    }

    public void close() {
        this.out.close();
    }

    public void config(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z) {
        this.out.config(serializerFeature, z);
    }

    public boolean containsReference(java.lang.Object obj) {
        com.alibaba.fastjson.serializer.SerialContext serialContext;
        java.util.IdentityHashMap<java.lang.Object, com.alibaba.fastjson.serializer.SerialContext> identityHashMap = this.references;
        if (identityHashMap == null || (serialContext = identityHashMap.get(obj)) == null || obj == java.util.Collections.emptyMap()) {
            return false;
        }
        java.lang.Object obj2 = serialContext.fieldName;
        return obj2 == null || (obj2 instanceof java.lang.Integer) || (obj2 instanceof java.lang.String);
    }

    public void decrementIdent() {
        this.indentCount--;
    }

    public com.alibaba.fastjson.serializer.SerialContext getContext() {
        return this.context;
    }

    public java.text.DateFormat getDateFormat() {
        java.lang.String str;
        if (this.dateFormat == null && (str = this.dateFormatPattern) != null) {
            this.dateFormat = generateDateFormat(str);
        }
        return this.dateFormat;
    }

    public java.lang.String getDateFormatPattern() {
        java.text.DateFormat dateFormat = this.dateFormat;
        return dateFormat instanceof java.text.SimpleDateFormat ? ((java.text.SimpleDateFormat) dateFormat).toPattern() : this.dateFormatPattern;
    }

    public java.lang.String getFastJsonConfigDateFormatPattern() {
        return this.fastJsonConfigDateFormatPattern;
    }

    public int getIndentCount() {
        return this.indentCount;
    }

    public com.alibaba.fastjson.serializer.SerializeConfig getMapping() {
        return this.config;
    }

    public com.alibaba.fastjson.serializer.ObjectSerializer getObjectWriter(java.lang.Class<?> cls) {
        return this.config.getObjectWriter(cls);
    }

    public com.alibaba.fastjson.serializer.SerializeWriter getWriter() {
        return this.out;
    }

    public boolean hasNameFilters(com.alibaba.fastjson.serializer.SerializeFilterable serializeFilterable) {
        java.util.List<com.alibaba.fastjson.serializer.NameFilter> list;
        java.util.List<com.alibaba.fastjson.serializer.NameFilter> list2 = this.nameFilters;
        return (list2 != null && list2.size() > 0) || ((list = serializeFilterable.nameFilters) != null && list.size() > 0);
    }

    public boolean hasPropertyFilters(com.alibaba.fastjson.serializer.SerializeFilterable serializeFilterable) {
        java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> list;
        java.util.List<com.alibaba.fastjson.serializer.PropertyFilter> list2 = this.propertyFilters;
        return (list2 != null && list2.size() > 0) || ((list = serializeFilterable.propertyFilters) != null && list.size() > 0);
    }

    public void incrementIndent() {
        this.indentCount++;
    }

    public boolean isEnabled(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        return this.out.isEnabled(serializerFeature);
    }

    public final boolean isWriteClassName(java.lang.reflect.Type type, java.lang.Object obj) {
        com.alibaba.fastjson.serializer.SerialContext serialContext;
        return this.out.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && !(type == null && this.out.isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.NotWriteRootClassName) && ((serialContext = this.context) == null || serialContext.parent == null));
    }

    public void popContext() {
        com.alibaba.fastjson.serializer.SerialContext serialContext = this.context;
        if (serialContext != null) {
            this.context = serialContext.parent;
        }
    }

    public void println() {
        this.out.write(10);
        for (int i = 0; i < this.indentCount; i++) {
            this.out.write(this.indent);
        }
    }

    public void setContext(com.alibaba.fastjson.serializer.SerialContext serialContext) {
        this.context = serialContext;
    }

    public void setContext(com.alibaba.fastjson.serializer.SerialContext serialContext, java.lang.Object obj, java.lang.Object obj2, int i) {
        setContext(serialContext, obj, obj2, i, 0);
    }

    public void setContext(com.alibaba.fastjson.serializer.SerialContext serialContext, java.lang.Object obj, java.lang.Object obj2, int i, int i2) {
        if (this.out.disableCircularReferenceDetect) {
            return;
        }
        this.context = new com.alibaba.fastjson.serializer.SerialContext(serialContext, obj, obj2, i, i2);
        if (this.references == null) {
            this.references = new java.util.IdentityHashMap<>();
        }
        this.references.put(obj, this.context);
    }

    public void setContext(java.lang.Object obj, java.lang.Object obj2) {
        setContext(this.context, obj, obj2, 0);
    }

    public void setDateFormat(java.lang.String str) {
        this.dateFormatPattern = str;
        if (this.dateFormat != null) {
            this.dateFormat = null;
        }
    }

    public void setDateFormat(java.text.DateFormat dateFormat) {
        this.dateFormat = dateFormat;
        if (this.dateFormatPattern != null) {
            this.dateFormatPattern = null;
        }
    }

    public void setFastJsonConfigDateFormatPattern(java.lang.String str) {
        this.fastJsonConfigDateFormatPattern = str;
    }

    public java.lang.String toString() {
        return this.out.toString();
    }

    public final void write(java.lang.Object obj) {
        if (obj == null) {
            this.out.writeNull();
            return;
        }
        try {
            getObjectWriter(obj.getClass()).write(this, obj, null, null, 0);
        } catch (java.io.IOException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    public final void write(java.lang.String str) {
        com.alibaba.fastjson.serializer.StringCodec.instance.write(this, str);
    }

    public final void writeAs(java.lang.Object obj, java.lang.Class cls) {
        if (obj == null) {
            this.out.writeNull();
            return;
        }
        try {
            getObjectWriter(cls).write(this, obj, null, null, 0);
        } catch (java.io.IOException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    public final void writeKeyValue(char c2, java.lang.String str, java.lang.Object obj) {
        if (c2 != 0) {
            this.out.write(c2);
        }
        this.out.writeFieldName(str);
        write(obj);
    }

    public void writeNull() {
        this.out.writeNull();
    }

    public void writeReference(java.lang.Object obj) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter;
        java.lang.String str;
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter2;
        java.lang.String str2;
        com.alibaba.fastjson.serializer.SerialContext serialContext = this.context;
        if (obj == serialContext.object) {
            serializeWriter2 = this.out;
            str2 = "{\"$ref\":\"@\"}";
        } else {
            com.alibaba.fastjson.serializer.SerialContext serialContext2 = serialContext.parent;
            if (serialContext2 == null || obj != serialContext2.object) {
                while (true) {
                    com.alibaba.fastjson.serializer.SerialContext serialContext3 = serialContext.parent;
                    if (serialContext3 == null) {
                        break;
                    } else {
                        serialContext = serialContext3;
                    }
                }
                if (obj == serialContext.object) {
                    serializeWriter = this.out;
                    str = "{\"$ref\":\"$\"}";
                } else {
                    this.out.write("{\"$ref\":\"");
                    this.out.write(this.references.get(obj).toString());
                    serializeWriter = this.out;
                    str = "\"}";
                }
                serializeWriter.write(str);
                return;
            }
            serializeWriter2 = this.out;
            str2 = "{\"$ref\":\"..\"}";
        }
        serializeWriter2.write(str2);
    }

    public final void writeWithFieldName(java.lang.Object obj, java.lang.Object obj2) {
        writeWithFieldName(obj, obj2, null, 0);
    }

    public final void writeWithFieldName(java.lang.Object obj, java.lang.Object obj2, java.lang.reflect.Type type, int i) {
        try {
            if (obj == null) {
                this.out.writeNull();
            } else {
                getObjectWriter(obj.getClass()).write(this, obj, obj2, type, i);
            }
        } catch (java.io.IOException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    public final void writeWithFormat(java.lang.Object obj, java.lang.String str) {
        java.lang.String strReplaceAll;
        if (obj instanceof java.util.Date) {
            if ("unixtime".equals(str)) {
                this.out.writeInt((int) (((java.util.Date) obj).getTime() / 1000));
                return;
            }
            if ("millis".equals(str)) {
                this.out.writeLong(((java.util.Date) obj).getTime());
                return;
            }
            java.text.DateFormat dateFormat = getDateFormat();
            if (dateFormat == null) {
                if (str != null) {
                    try {
                        dateFormat = generateDateFormat(str);
                    } catch (java.lang.IllegalArgumentException unused) {
                        strReplaceAll = str.replaceAll("T", "'T'");
                    }
                } else {
                    strReplaceAll = this.fastJsonConfigDateFormatPattern;
                    if (strReplaceAll == null) {
                        strReplaceAll = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT;
                    }
                }
                dateFormat = generateDateFormat(strReplaceAll);
            }
            this.out.writeString(dateFormat.format((java.util.Date) obj));
            return;
        }
        if (!(obj instanceof byte[])) {
            if (!(obj instanceof java.util.Collection)) {
                write(obj);
                return;
            }
            java.util.Collection collection = (java.util.Collection) obj;
            java.util.Iterator it = collection.iterator();
            this.out.write(91);
            for (int i = 0; i < collection.size(); i++) {
                java.lang.Object next = it.next();
                if (i != 0) {
                    this.out.write(44);
                }
                writeWithFormat(next, str);
            }
            this.out.write(93);
            return;
        }
        byte[] bArr = (byte[]) obj;
        if (!"gzip".equals(str) && !"gzip,base64".equals(str)) {
            if ("hex".equals(str)) {
                this.out.writeHex(bArr);
                return;
            } else {
                this.out.writeByteArray(bArr);
                return;
            }
        }
        java.util.zip.GZIPOutputStream gZIPOutputStream = null;
        try {
            try {
                java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream();
                gZIPOutputStream = bArr.length < 512 ? new java.util.zip.GZIPOutputStream(byteArrayOutputStream, bArr.length) : new java.util.zip.GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.finish();
                this.out.writeByteArray(byteArrayOutputStream.toByteArray());
            } catch (java.io.IOException e2) {
                throw new com.alibaba.fastjson.JSONException("write gzipBytes error", e2);
            }
        } finally {
            com.alibaba.fastjson.util.IOUtils.close(gZIPOutputStream);
        }
    }
}
