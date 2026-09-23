package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONWriter implements java.io.Closeable, java.io.Flushable {
    public com.alibaba.fastjson.JSONStreamContext context;
    public com.alibaba.fastjson.serializer.JSONSerializer serializer;
    public com.alibaba.fastjson.serializer.SerializeWriter writer;

    public JSONWriter(java.io.Writer writer) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter(writer);
        this.writer = serializeWriter;
        this.serializer = new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter);
    }

    private void afterWrite() {
        int i;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext == null) {
            return;
        }
        switch (jSONStreamContext.state) {
            case 1001:
            case 1003:
                i = 1002;
                break;
            case 1002:
                i = 1003;
                break;
            case 1004:
                i = 1005;
                break;
            default:
                i = -1;
                break;
        }
        if (i != -1) {
            this.context.state = i;
        }
    }

    private void beforeWrite() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        if (jSONStreamContext == null) {
            return;
        }
        int i = jSONStreamContext.state;
        if (i == 1002) {
            this.writer.write(58);
        } else if (i == 1003 || i == 1005) {
            this.writer.write(44);
        }
    }

    private void beginStructure() {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter;
        int i;
        int i2 = this.context.state;
        switch (i2) {
            case 1001:
            case 1004:
                return;
            case 1002:
                serializeWriter = this.writer;
                i = 58;
                break;
            case 1003:
            default:
                throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.K("illegal state : ", i2));
            case 1005:
                serializeWriter = this.writer;
                i = 44;
                break;
        }
        serializeWriter.write(i);
    }

    private void endStructure() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context.parent;
        this.context = jSONStreamContext;
        if (jSONStreamContext == null) {
            return;
        }
        int i = jSONStreamContext.state;
        int i2 = i != 1001 ? i != 1002 ? i != 1004 ? -1 : 1005 : 1003 : 1002;
        if (i2 != -1) {
            this.context.state = i2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.writer.close();
    }

    public void config(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z) {
        this.writer.config(serializerFeature, z);
    }

    public void endArray() {
        this.writer.write(93);
        endStructure();
    }

    public void endObject() {
        this.writer.write(125);
        endStructure();
    }

    @Override // java.io.Flushable
    public void flush() throws java.io.IOException {
        this.writer.flush();
    }

    public void startArray() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, 1004);
        this.writer.write(91);
    }

    public void startObject() {
        if (this.context != null) {
            beginStructure();
        }
        this.context = new com.alibaba.fastjson.JSONStreamContext(this.context, 1001);
        this.writer.write(123);
    }

    @java.lang.Deprecated
    public void writeEndArray() {
        endArray();
    }

    @java.lang.Deprecated
    public void writeEndObject() {
        endObject();
    }

    public void writeKey(java.lang.String str) {
        writeObject(str);
    }

    public void writeObject(java.lang.Object obj) {
        beforeWrite();
        this.serializer.write(obj);
        afterWrite();
    }

    public void writeObject(java.lang.String str) {
        beforeWrite();
        this.serializer.write(str);
        afterWrite();
    }

    @java.lang.Deprecated
    public void writeStartArray() {
        startArray();
    }

    @java.lang.Deprecated
    public void writeStartObject() {
        startObject();
    }

    public void writeValue(java.lang.Object obj) {
        writeObject(obj);
    }
}
