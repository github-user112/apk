package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public class ParseContext {
    public final java.lang.Object fieldName;
    public final int level;
    public java.lang.Object object;
    public final com.alibaba.fastjson.parser.ParseContext parent;
    public transient java.lang.String path;
    public java.lang.reflect.Type type;

    public ParseContext(com.alibaba.fastjson.parser.ParseContext parseContext, java.lang.Object obj, java.lang.Object obj2) {
        this.parent = parseContext;
        this.object = obj;
        this.fieldName = obj2;
        this.level = parseContext == null ? 0 : parseContext.level + 1;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb;
        java.lang.String string;
        if (this.path == null) {
            if (this.parent == null) {
                string = "$";
            } else {
                if (this.fieldName instanceof java.lang.Integer) {
                    sb = new java.lang.StringBuilder();
                    sb.append(this.parent.toString());
                    sb.append("[");
                    sb.append(this.fieldName);
                    sb.append("]");
                } else {
                    sb = new java.lang.StringBuilder();
                    sb.append(this.parent.toString());
                    sb.append(".");
                    sb.append(this.fieldName);
                }
                string = sb.toString();
            }
            this.path = string;
        }
        return this.path;
    }
}
