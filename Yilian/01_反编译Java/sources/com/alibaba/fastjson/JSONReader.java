package com.alibaba.fastjson;

/* loaded from: classes.dex */
public class JSONReader implements java.io.Closeable {
    public com.alibaba.fastjson.JSONStreamContext context;
    public transient com.alibaba.fastjson.JSONStreamContext lastContext;
    public final com.alibaba.fastjson.parser.DefaultJSONParser parser;

    public JSONReader(com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser) {
        this.parser = defaultJSONParser;
    }

    public JSONReader(com.alibaba.fastjson.parser.JSONLexer jSONLexer) {
        this(new com.alibaba.fastjson.parser.DefaultJSONParser(jSONLexer));
    }

    public JSONReader(java.io.Reader reader) {
        this(reader, new com.alibaba.fastjson.parser.Feature[0]);
    }

    public JSONReader(java.io.Reader reader, com.alibaba.fastjson.parser.Feature... featureArr) {
        this(new com.alibaba.fastjson.parser.JSONReaderScanner(reader));
        for (com.alibaba.fastjson.parser.Feature feature : featureArr) {
            config(feature, true);
        }
    }

    private void endStructure() {
        int i;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext = this.context;
        this.lastContext = jSONStreamContext;
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext2 = jSONStreamContext.parent;
        this.context = jSONStreamContext2;
        if (jSONStreamContext2 == null) {
            return;
        }
        switch (jSONStreamContext2.state) {
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

    private void readAfter() {
        int i = this.context.state;
        int i2 = 1002;
        switch (i) {
            case 1001:
            case 1003:
                break;
            case 1002:
                i2 = 1003;
                break;
            case 1004:
                i2 = 1005;
                break;
            case 1005:
                i2 = -1;
                break;
            default:
                throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.K("illegal state : ", i));
        }
        if (i2 != -1) {
            this.context.state = i2;
        }
    }

    private void readBefore() {
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser;
        int i = this.context.state;
        int i2 = 16;
        switch (i) {
            case 1001:
            case 1004:
                return;
            case 1002:
                defaultJSONParser = this.parser;
                i2 = 17;
                break;
            case 1003:
                this.parser.accept(16, 18);
                return;
            case 1005:
                defaultJSONParser = this.parser;
                break;
            default:
                throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.K("illegal state : ", i));
        }
        defaultJSONParser.accept(i2);
    }

    private void startStructure() {
        com.alibaba.fastjson.parser.DefaultJSONParser defaultJSONParser;
        int i;
        switch (this.context.state) {
            case 1001:
            case 1004:
                return;
            case 1002:
                defaultJSONParser = this.parser;
                i = 17;
                break;
            case 1003:
            case 1005:
                defaultJSONParser = this.parser;
                i = 16;
                break;
            default:
                java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal state : ");
                sbO.append(this.context.state);
                throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        defaultJSONParser.accept(i);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.parser.close();
    }

    public void config(com.alibaba.fastjson.parser.Feature feature, boolean z) {
        this.parser.config(feature, z);
    }

    public void endArray() {
        this.parser.accept(15);
        endStructure();
    }

    public void endObject() {
        this.parser.accept(13);
        endStructure();
    }

    public java.util.Locale getLocal() {
        return this.parser.lexer.getLocale();
    }

    public java.util.TimeZone getTimzeZone() {
        return this.parser.lexer.getTimeZone();
    }

    public boolean hasNext() {
        if (this.context == null) {
            throw new com.alibaba.fastjson.JSONException("context is null");
        }
        int i = this.parser.lexer.token();
        int i2 = this.context.state;
        switch (i2) {
            case 1001:
            case 1003:
                return i != 13;
            case 1002:
            default:
                throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.K("illegal state : ", i2));
            case 1004:
            case 1005:
                return i != 15;
        }
    }

    public int peek() {
        return this.parser.lexer.token();
    }

    public java.lang.Integer readInteger() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            obj = this.parser.parse();
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToInt(obj);
    }

    public java.lang.Long readLong() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            obj = this.parser.parse();
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToLong(obj);
    }

    public java.lang.Object readObject() {
        if (this.context == null) {
            return this.parser.parse();
        }
        readBefore();
        int i = this.context.state;
        java.lang.Object key = (i == 1001 || i == 1003) ? this.parser.parseKey() : this.parser.parse();
        readAfter();
        return key;
    }

    public <T> T readObject(com.alibaba.fastjson.TypeReference<T> typeReference) {
        return (T) readObject(typeReference.getType());
    }

    public <T> T readObject(java.lang.Class<T> cls) {
        if (this.context == null) {
            return (T) this.parser.parseObject((java.lang.Class) cls);
        }
        readBefore();
        T t = (T) this.parser.parseObject((java.lang.Class) cls);
        this.parser.handleResovleTask(t);
        readAfter();
        return t;
    }

    public <T> T readObject(java.lang.reflect.Type type) {
        if (this.context == null) {
            return (T) this.parser.parseObject(type);
        }
        readBefore();
        T t = (T) this.parser.parseObject(type);
        readAfter();
        return t;
    }

    public java.lang.Object readObject(java.util.Map map) {
        if (this.context == null) {
            return this.parser.parseObject(map);
        }
        readBefore();
        java.lang.Object object = this.parser.parseObject(map);
        readAfter();
        return object;
    }

    public void readObject(java.lang.Object obj) {
        if (this.context == null) {
            this.parser.parseObject(obj);
            return;
        }
        readBefore();
        this.parser.parseObject(obj);
        readAfter();
    }

    public java.lang.String readString() {
        java.lang.Object obj;
        if (this.context == null) {
            obj = this.parser.parse();
        } else {
            readBefore();
            com.alibaba.fastjson.parser.JSONLexer jSONLexer = this.parser.lexer;
            if (this.context.state == 1001 && jSONLexer.token() == 18) {
                java.lang.String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextToken();
                obj = strStringVal;
            } else {
                obj = this.parser.parse();
            }
            readAfter();
        }
        return com.alibaba.fastjson.util.TypeUtils.castToString(obj);
    }

    public void setLocale(java.util.Locale locale) {
        this.parser.lexer.setLocale(locale);
    }

    public void setTimzeZone(java.util.TimeZone timeZone) {
        this.parser.lexer.setTimeZone(timeZone);
    }

    public void startArray() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext;
        if (this.context == null) {
            jSONStreamContext = new com.alibaba.fastjson.JSONStreamContext(null, 1004);
        } else {
            startStructure();
            jSONStreamContext = new com.alibaba.fastjson.JSONStreamContext(this.context, 1004);
        }
        this.context = jSONStreamContext;
        this.parser.accept(14);
    }

    public void startObject() {
        com.alibaba.fastjson.JSONStreamContext jSONStreamContext;
        if (this.context == null) {
            jSONStreamContext = new com.alibaba.fastjson.JSONStreamContext(null, 1001);
        } else {
            startStructure();
            com.alibaba.fastjson.JSONStreamContext jSONStreamContext2 = this.lastContext;
            if (jSONStreamContext2 != null && jSONStreamContext2.parent == this.context) {
                this.context = jSONStreamContext2;
                if (jSONStreamContext2.state != 1001) {
                    jSONStreamContext2.state = 1001;
                }
                this.parser.accept(12, 18);
            }
            jSONStreamContext = new com.alibaba.fastjson.JSONStreamContext(this.context, 1001);
        }
        this.context = jSONStreamContext;
        this.parser.accept(12, 18);
    }
}
