package com.alibaba.fastjson.support.spring;

/* loaded from: classes.dex */
public class FastjsonSockJsMessageCodec extends org.springframework.web.socket.sockjs.frame.AbstractSockJsMessageCodec {
    public char[] applyJsonQuoting(java.lang.String str) {
        com.alibaba.fastjson.serializer.SerializeWriter serializeWriter = new com.alibaba.fastjson.serializer.SerializeWriter();
        try {
            new com.alibaba.fastjson.serializer.JSONSerializer(serializeWriter).write(str);
            return serializeWriter.toCharArrayForSpringWebSocket();
        } finally {
            serializeWriter.close();
        }
    }

    public java.lang.String[] decode(java.lang.String str) {
        return (java.lang.String[]) com.alibaba.fastjson.JSON.parseObject(str, java.lang.String[].class);
    }

    public java.lang.String[] decodeInputStream(java.io.InputStream inputStream) {
        return (java.lang.String[]) com.alibaba.fastjson.JSON.parseObject(inputStream, java.lang.String[].class, new com.alibaba.fastjson.parser.Feature[0]);
    }
}
