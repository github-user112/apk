package com.alibaba.fastjson.parser;

@java.lang.Deprecated
/* loaded from: classes.dex */
public class DefaultExtJSONParser extends com.alibaba.fastjson.parser.DefaultJSONParser {
    public DefaultExtJSONParser(java.lang.String str) {
        this(str, com.alibaba.fastjson.parser.ParserConfig.getGlobalInstance());
    }

    public DefaultExtJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig) {
        super(str, parserConfig);
    }

    public DefaultExtJSONParser(java.lang.String str, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i) {
        super(str, parserConfig, i);
    }

    public DefaultExtJSONParser(char[] cArr, int i, com.alibaba.fastjson.parser.ParserConfig parserConfig, int i2) {
        super(cArr, i, parserConfig, i2);
    }
}
